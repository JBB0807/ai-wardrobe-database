ALTER TABLE "address"
DROP COLUMN IF EXISTS "streetnum";

ALTER TABLE "address"
DROP COLUMN IF EXISTS "streetname";

ALTER TABLE "address"
DROP COLUMN IF EXISTS "apartmentnum";

ALTER TABLE "address"
ADD COLUMN IF NOT EXISTS "address1" VARCHAR (255);

ALTER TABLE "address"
ADD COLUMN IF NOT EXISTS "address2" VARCHAR (255);