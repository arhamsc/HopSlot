/*
  Warnings:

  - The `appointmentStart` column on the `appointments` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "appointments" DROP COLUMN "appointmentStart",
ADD COLUMN     "appointmentStart" TIMESTAMP(3);
