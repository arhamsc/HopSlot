/*
  Warnings:

  - You are about to drop the column `appointment` on the `appointments` table. All the data in the column will be lost.
  - Added the required column `appointmentSlotId` to the `appointments` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "Status" AS ENUM ('PENDING', 'ACTIVE', 'INACTIVE');

-- AlterTable
ALTER TABLE "appointments" DROP COLUMN "appointment",
ADD COLUMN     "appointmentSlotId" TEXT NOT NULL,
ADD COLUMN     "delay" INTEGER;

-- CreateTable
CREATE TABLE "doctor_slots" (
    "id" TEXT NOT NULL,
    "doctorId" TEXT NOT NULL,
    "slotStart" TIMESTAMP(3) NOT NULL,
    "slotEnd" TIMESTAMP(3) NOT NULL,
    "duration" INTEGER NOT NULL,
    "status" "Status" NOT NULL DEFAULT 'PENDING',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "doctor_slots_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "doctor_slots" ADD CONSTRAINT "doctor_slots_doctorId_fkey" FOREIGN KEY ("doctorId") REFERENCES "doctors"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "appointments" ADD CONSTRAINT "appointments_appointmentSlotId_fkey" FOREIGN KEY ("appointmentSlotId") REFERENCES "doctor_slots"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
