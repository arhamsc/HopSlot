import { PointOfInterest, PrismaClient, Prisma } from 'db/mongo';
import releaseConditions from './seed-data/release_conditions.json';
import releaseEvidences from './seed-data/release_evidences.json';
import path from 'path';
import { config } from 'dotenv';

console.log(path.join(__dirname, '../../.env.local'));

config({
  path: path.join(__dirname, '../../.env.local'),
});

const mdPrisma = new PrismaClient();

async function extractValuesData() {
  await mdPrisma.pointOfInterest.deleteMany();
  const data = releaseEvidences;
  const uniqueValueKeys = new Set();
  const sample: { name: string; value: string; forType: string }[] = [];

  for (const releaseEvidence of data) {
    const { value_meaning, data_type } = releaseEvidence;
    if (data_type === 'B' || data_type === 'C') {
      continue;
    } else {
      const value_keys = Object.keys(value_meaning);
      for (const key of value_keys) {
        if (!uniqueValueKeys.has(key)) {
          const value = (value_meaning as any)[key as any];
          sample.push({
            name: key,
            value: value.en,
            forType: 'M',
          });
        }
        uniqueValueKeys.add(key);
      }
    }
  }

  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10].forEach((i) => {
    sample.push({
      name: i.toString(),
      value: 'Pain level',
      forType: 'C',
    });
  });

  try {
    const result = await mdPrisma.pointOfInterest.createMany({
      data: sample,
    });

    console.log({ message: `Inserted ${result.count} records`, result });
  } catch (e) {
    console.error({ func: 'extractValuesData', error: e });
  }
}

async function seedReleaseConditions() {
  await mdPrisma.symptomEvidence.deleteMany();
  const data: Prisma.SymptomEvidenceUncheckedCreateInput[] = [];
  for (const releaseEvidence of releaseEvidences) {
    const { possible_values, default_value, data_type } = releaseEvidence;
    const possibleValuesIds: PointOfInterest[] = [];
    const defaultValue = await mdPrisma.pointOfInterest.findUnique({
      where: {
        name: default_value.toString(),
      },
    });
    if (data_type === 'M') {
      for (const possibleValue of possible_values) {
        const value = await mdPrisma.pointOfInterest.findUnique({
          where: {
            name: possibleValue.toString(),
          },
        });
        if (!value) {
          console.error({
            message: 'Value not found',
            value: possibleValue,
            releaseEvidence,
          });
          continue;
        }
        possibleValuesIds.push(value);
      }
    }

    data.push({
      name: releaseEvidence.name,
      possibleValueIds: possibleValuesIds.map((v) => v.id),
      defaultValueId: defaultValue?.id,
      codeQuestion: releaseEvidence.code_question,
      dataType: releaseEvidence.data_type,
      isActecedent: releaseEvidence.is_antecedent,
      question: releaseEvidence.question_en,
    });
  }

  try {
    const result = await mdPrisma.symptomEvidence.createMany({
      data,
    });
    console.log({ message: `Inserted ${result.count} records`, result });
  } catch (e) {
    console.error({ func: 'seedReleaseConditions', error: e });
  }
}

async function seedConditions() {
  await mdPrisma.conditions.deleteMany();
  const data: Prisma.ConditionsUncheckedCreateInput[] = [];
  for (const condition of releaseConditions) {
    const { antecedents, symptoms } = condition;
    const ants = await mdPrisma.symptomEvidence.findMany({
      where: {
        name: {
          in: Object.keys(antecedents),
        },
      },
    });
    const symps = await mdPrisma.symptomEvidence.findMany({
      where: {
        name: {
          in: Object.keys(symptoms),
        },
      },
    });

    data.push({
      name: condition.condition_name,
      icd10Id: condition.icd10_id,
      antecedentIds: ants.map((a) => a.id),
      symtomIds: symps.map((s) => s.id),
    });
  }

  try {
    const result = await mdPrisma.conditions.createMany({
      data,
    });
    console.log({ message: `Inserted ${result.count} records`, result });
  } catch (e) {
    console.error({ func: 'seedConditions', error: e });
  }
}

async function main() {
  await mdPrisma.$connect();
  console.log({
    message: 'Connected to MongoDB',
    url: process.env.MONGO_DATABASE_URL,
  });
  await extractValuesData();
  await seedReleaseConditions();
  await seedConditions();
}

main()
  .then(async () => {
    await mdPrisma.$disconnect();
  })
  .catch(async (e) => {
    console.error({ func: 'main', error: e });
    await mdPrisma.$disconnect();
    process.exit(1);
  });
