import { DoctorSlotModel, HospitalModel } from 'src/core/schemas';
import zodToJsonSchema from 'zod-to-json-schema';
import copy from 'clipboardy';

const json = zodToJsonSchema(HospitalModel);

copy.writeSync(JSON.stringify(json, null, 2));

console.log('JSON schema copied to clipboard');
