/*
  Warnings:

  - Added the required column `doctorId` to the `prescriptions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `patientId` to the `prescriptions` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "prescriptions" ADD COLUMN     "doctorId" TEXT NOT NULL,
ADD COLUMN     "patientId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "prescriptions" ADD CONSTRAINT "prescriptions_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES "patients"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "prescriptions" ADD CONSTRAINT "prescriptions_doctorId_fkey" FOREIGN KEY ("doctorId") REFERENCES "doctors"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;
