--Run only once, rerun Business Table Build if a fresh data set is needed

--Data Seed Version 1.1

--
-- Size
--
INSERT INTO "Size" (sizeDescription) VALUES ('x-small');
INSERT INTO "Size" (sizeDescription) VALUES ('small');
INSERT INTO "Size" (sizeDescription) VALUES ('medium');
INSERT INTO "Size" (sizeDescription) VALUES ('large');
INSERT INTO "Size" (sizeDescription) VALUES ('x-large');
--
-- END - Size
--

--
-- Item Types
--
INSERT INTO "ItemTypes" (itemTypeDescription) VALUES ('Coat');
--
-- END - Item Types
--

--
-- Item Gender
--
INSERT INTO "ItemGender" (itemGenderDescription) VALUES ('Female');
INSERT INTO "ItemGender" (itemGenderDescription) VALUES ('Male');
INSERT INTO "ItemGender" (itemGenderDescription) VALUES ('Unisex');
--
-- END - Item Gender
--

--

--
-- Items
--
INSERT INTO "Item" (itemtype ,itemdescription ,itemprice ,imageurl ,fkitemgenderid ,fksizeid ,fktypeid) 
    VALUES ('coat', 'First item description', 10.99, 'url1', 1, 1, 1);
INSERT INTO "Item" (itemtype ,itemdescription ,itemprice ,imageurl ,fkitemgenderid ,fksizeid ,fktypeid) 
    VALUES ('coat', 'Second item description', 20.99, 'url2', 2, 2, 1);
INSERT INTO "Item" (itemtype ,itemdescription ,itemprice ,imageurl ,fkitemgenderid ,fksizeid ,fktypeid) 
    VALUES ('coat', 'Third item description', 30.99, 'url3', 3, 3, 1);
INSERT INTO "Item" (itemtype ,itemdescription ,itemprice ,imageurl ,fkitemgenderid ,fksizeid ,fktypeid) 
    VALUES ('coat', 'Fourht item description', 40.99, 'url4', 1, 4, 1);
INSERT INTO "Item" (itemtype ,itemdescription ,itemprice ,imageurl ,fkitemgenderid ,fksizeid ,fktypeid) 
    VALUES ('coat', 'Fifth item description', 50.99, 'url5', 2, 5, 1);
--
-- END - Items
--