/*
  Warnings:

  - You are about to drop the column `duration` on the `doctor_slots` table. All the data in the column will be lost.
  - You are about to drop the column `slotEnd` on the `doctor_slots` table. All the data in the column will be lost.
  - You are about to drop the column `slotStart` on the `doctor_slots` table. All the data in the column will be lost.
  - Added the required column `durationOfPerVisit` to the `doctor_slots` table without a default value. This is not possible if the table is not empty.
  - Added the required column `slotEndTime` to the `doctor_slots` table without a default value. This is not possible if the table is not empty.
  - Added the required column `slotStartTime` to the `doctor_slots` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "doctor_slots" DROP COLUMN "duration",
DROP COLUMN "slotEnd",
DROP COLUMN "slotStart",
ADD COLUMN     "durationOfPerVisit" INTEGER NOT NULL,
ADD COLUMN     "slotEndTime" TIME NOT NULL,
ADD COLUMN     "slotStartTime" TIME NOT NULL;
