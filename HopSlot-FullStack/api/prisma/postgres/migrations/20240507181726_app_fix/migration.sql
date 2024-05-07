/*
  Warnings:

  - You are about to drop the column `delay` on the `appointments` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "appointments" DROP COLUMN "delay",
ADD COLUMN     "additionalDelay" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "users" ADD COLUMN     "fcmToken" TEXT;
