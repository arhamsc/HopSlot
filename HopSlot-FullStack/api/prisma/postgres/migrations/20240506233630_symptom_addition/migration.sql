/*
  Warnings:

  - You are about to drop the column `symptoms` on the `appointments` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "appointments" DROP COLUMN "symptoms";

-- CreateTable
CREATE TABLE "symptoms" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "desc" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "values" TEXT[] DEFAULT ARRAY[]::TEXT[],
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "appointmentId" TEXT,

    CONSTRAINT "symptoms_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "symptoms" ADD CONSTRAINT "symptoms_appointmentId_fkey" FOREIGN KEY ("appointmentId") REFERENCES "appointments"("id") ON DELETE SET NULL ON UPDATE CASCADE;
