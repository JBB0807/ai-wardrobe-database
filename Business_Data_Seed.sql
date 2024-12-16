--
-- Seed UseTypes
--
DELETE FROM "UserTypes";
INSERT INTO "UserTypes" (userType) VALUES ('Customer');
INSERT INTO "UserTypes" (userType) VALUES ('Admin');
--
-- END - Seed UseTypes
--


--
-- Seed Size
--
DELETE FROM "Size";
INSERT INTO "Size" (sizeDescription) VALUES ('xx-small');
INSERT INTO "Size" (sizeDescription) VALUES ('x-small');
INSERT INTO "Size" (sizeDescription) VALUES ('small');
INSERT INTO "Size" (sizeDescription) VALUES ('medium');
INSERT INTO "Size" (sizeDescription) VALUES ('large');
INSERT INTO "Size" (sizeDescription) VALUES ('x-large');
INSERT INTO "Size" (sizeDescription) VALUES ('xx-large');
--
-- END - Seed Size
--


--
-- Item Types
--
DELETE FROM "ItemTypes";
INSERT INTO "ItemTypes" (itemTypeDescription) VALUES ('Winter Coat');
INSERT INTO "ItemTypes" (itemTypeDescription) VALUES ('Rain Coat');
INSERT INTO "ItemTypes" (itemTypeDescription) VALUES ('Formal Coat');
--
-- END - Item Types
--



--
-- Item Gender
--
DELETE FROM "ItemGender";
INSERT INTO "ItemGender" (itemGenderDescription) VALUES ('Female');
INSERT INTO "ItemGender" (itemGenderDescription) VALUES ('Male');
INSERT INTO "ItemGender" (itemGenderDescription) VALUES ('Unisex');
--
-- END - Item Gender
--