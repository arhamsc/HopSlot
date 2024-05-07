/*
  Warnings:

  - You are about to drop the column `appointmentStart` on the `appointments` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "appointments" DROP COLUMN "appointmentStart",
ADD COLUMN     "appointmentStartDelay" INTEGER;
