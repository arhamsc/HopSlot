/*
  Warnings:

  - Added the required column `reportPublicId` to the `reports` table without a default value. This is not possible if the table is not empty.
  - Added the required column `reportSecureUrl` to the `reports` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "reports" ADD COLUMN     "reportPublicId" TEXT NOT NULL,
ADD COLUMN     "reportSecureUrl" TEXT NOT NULL;
