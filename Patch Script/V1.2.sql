--
-- Updating Item Table
--
ALTER TABLE "Item"
ADD COLUMN IF NOT EXISTS "itemname" VARCHAR(100);

ALTER TABLE "Item" 
ALTER COLUMN "itemdescription" TYPE VARCHAR(1000);
--
-- Updating Item Table
--



--
-- Adding Paypal Columns to the Transaction Table
--
ALTER TABLE "Transaction"
ADD COLUMN IF NOT EXISTS "paypaltransactionid" VARCHAR(100);

ALTER TABLE "Transaction"
ADD COLUMN IF NOT EXISTS "payername" VARCHAR(100);

ALTER TABLE "Transaction"
ADD COLUMN IF NOT EXISTS "payeremail" VARCHAR(100);

ALTER TABLE "Transaction"
ADD COLUMN IF NOT EXISTS "currency" VARCHAR(20);

ALTER TABLE "Transaction"
ADD COLUMN IF NOT EXISTS "paymentmethod" VARCHAR(20);
--
-- END - Adding Paypal Columns to the Transaction Table
--



--
-- Create a OrderStatus Table
--
DROP TABLE IF EXISTS "OrderStatus";

CREATE TABLE "OrderStatus" (
    "status" VARCHAR(50) PRIMARY KEY
);

INSERT INTO "OrderStatus" ("status")
VALUES ('Pending'), ('Confirmed'), ('Shipped'), ('Out for Delivery'), ('Delivered'), ('Canceled'), ('Failed'), ('Returned'), ('Refunded');
--
-- END - Create a OrderStatus Table
--



--
--Updating Order Table
--
ALTER TABLE "Order"
ALTER COLUMN "orderstatus" SET DEFAULT 'Pending';

ALTER TABLE "Order"
ADD CONSTRAINT fk_orders_status
FOREIGN KEY ("orderstatus")
REFERENCES "OrderStatus"("status")
ON DELETE CASCADE; 
--
--END Updating Order Table
--



CREATE TABLE IF NOT EXISTS "DbVersion" (
    versionNum DECIMAL 
);

INSERT INTO "DbVersion" VALUES (1.2);