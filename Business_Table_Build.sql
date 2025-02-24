--Table Build Version 1.2

DROP TABLE IF EXISTS "OrderDetails";
DROP TABLE IF EXISTS "Transaction";
DROP TABLE IF EXISTS "Order";
DROP TABLE IF EXISTS "OrderStatus";


DROP TABLE IF EXISTS "Address";
DROP TABLE IF EXISTS "RegisteredUser";


DROP TABLE IF EXISTS "Item";
DROP TABLE IF EXISTS "ItemGender";
DROP TABLE IF EXISTS "Size";
DROP TABLE IF EXISTS "ItemTypes";


--
--Creating user related tables
--
CREATE TABLE "RegisteredUser" (
    userID SERIAL PRIMARY KEY,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    phone INTEGER,
    email VARCHAR(255)
);


CREATE TABLE "Address" (
    addressID SERIAL PRIMARY KEY,
    streetNum INTEGER,
    streetName VARCHAR(255),
    apartmentNum INTEGER,
    city VARCHAR(255),
    province VARCHAR(255),
    postalCode VARCHAR(255),
    country VARCHAR(255),
    fkUserID INTEGER,
    CONSTRAINT address_user_id_fk FOREIGN KEY (fkUserID) REFERENCES "RegisteredUser" (userID)
);
--
-- END - user related tables
--


--
-- Creating item related tables
--
CREATE TABLE "Size" (
    sizeID SERIAL PRIMARY KEY,
    sizeDescription VARCHAR(255)
);


CREATE TABLE "ItemTypes" (
    itemTypeID SERIAL PRIMARY KEY,
    itemTypeDescription VARCHAR(255)
);


CREATE TABLE "ItemGender" (
    itemGenderID SERIAL PRIMARY KEY,
    itemGenderDescription VARCHAR(255)
);


CREATE TABLE "Item" (
    itemID SERIAL PRIMARY KEY,
    itemType VARCHAR(255),
    itemName VARCHAR(100),
    itemDescription VARCHAR(1000),
    itemPrice DECIMAL,
    imageURL VARCHAR(255),
    fkItemGenderID INTEGER,
    fkSizeID INTEGER,
    fkTypeID INTEGER,
    CONSTRAINT item_item_gender_id_fk FOREIGN KEY (fkItemGenderID) REFERENCES "ItemGender" (itemGenderID),
    CONSTRAINT item_item_size_id_fk FOREIGN KEY (fkSizeID) REFERENCES "Size" (sizeID),
    CONSTRAINT item_item_type_id_fk FOREIGN KEY (fkTypeID) REFERENCES "ItemTypes" (itemTypeID)
);


--
-- END - item related tables
--



--
-- Creating order related table
--
CREATE TABLE "OrderStatus" (
    "status" VARCHAR(50) PRIMARY KEY
);

CREATE TABLE "Order" (
    orderID SERIAL PRIMARY KEY,
    orderDate DATE,
    orderStatus VARCHAR(255) DEFAULT 'Pending' ,
    fkUserID INTEGER,
    CONSTRAINT order_user_id_fk FOREIGN KEY (fkUserID) REFERENCES "RegisteredUser" (userID),
    CONSTRAINT orders_status_fk FOREIGN KEY (orderstatus) REFERENCES "OrderStatus"("status")
);


CREATE TABLE "Transaction" (
    transactionID SERIAL PRIMARY KEY,
    totalAmount DECIMAL,
    transactionDate DATE,
    transactionStatus VARCHAR(255),
    paypaltransactionid VARCHAR(100),
    payername VARCHAR(100),
    payeremail VARCHAR(100),
    currency VARCHAR(20),
    paymentmethod VARCHAR(20),
    fkorderID INTEGER,
    CONSTRAINT transaction_order_id_fk FOREIGN KEY (fkorderID) REFERENCES "Order" (orderID)
);


CREATE TABLE "OrderDetails" (
    orderDetailsID SERIAL PRIMARY KEY,
    fkItemID INTEGER,
    quantity DATE,
    price DECIMAL,
    fkorderID INTEGER,
    CONSTRAINT order_details_item_id_fk FOREIGN KEY (fkItemID) REFERENCES "Item" (itemID),
    CONSTRAINT order_details_order_id_fk FOREIGN KEY (fkorderID) REFERENCES "Order" (orderID)
);
--
-- END - order related table
--

commit;