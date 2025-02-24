--Run only once, rerun Business Table Build if a fresh data set is needed

--Data Seed Version 1.2


--
-- Order Status
--
INSERT INTO "OrderStatus" ("status")
VALUES 
    ('Pending'), 
    ('Confirmed'), 
    ('Shipped'), 
    ('Out for Delivery'), 
    ('Delivered'), 
    ('Canceled'), 
    ('Failed'), 
    ('Returned'), 
    ('Refunded');
--
-- END - Order Status
--


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
INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Solaris Coat',34.99,'/images/products/Iridescent_Glass_Woman__A_Futuristic_Vision_in_Light_and_Color.webp',1,4,1,'Coat','The Solaris Coat is a radiant beacon of futuristic fashion, infused with AI-engineered luminous fibers that channel the energy of the sun. Its surface glows softly in dim environments, emitting a golden, sun-kissed aura that intensifies with movement. Crafted from ultra-light, heat-regulating material, it harnesses ambient warmth and redistributes it evenly for optimal comfort in any climate. With seamless touch-sensitive fastenings and adaptive light filtration, the Solaris Coat is the perfect fusion of luxury, technology, and celestial beauty.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Mirage Shroud',24.99,'/images/products/-17.webp',1,3,1,'Coat','The Mirage Shroud is a coat of illusion and transformation, crafted with advanced nano-chromatic fibers that dynamically shift colors to blend seamlessly into different surroundings. Its AI-designed textile creates a fluid interplay of iridescent pastels and deep, enigmatic shades, evoking a surreal, dreamlike aesthetic. Lightweight yet protective, it offers wind resistance, temperature regulation, and a near-frictionless texture that enhances movement. With its ever-changing appearance, the Mirage Shroud embodies the art of fluid identity and futuristic expression.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('CryoSpectre Coat',59.99,'/images/products/45_People_Who_Deserve_The_Prize_For_Nailing_Halloween_This_Year.webp',1,4,1,'Coat','For extreme environments, blending high-tech insulation with AI-crafted aesthetics. Its ultra-light, thermal-adaptive fabric responds to temperature changes, expanding heat-reflective fibers in the cold while ventilating excess warmth in milder climates. The exterior shimmers with a frost-like crystalline pattern that shifts from arctic silver to icy blue under different lighting. Equipped with luminescent detailing for low-light visibility, the CryoSpectre Coat is the perfect fusion of form and function for the modern wanderer.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Firefly Coat',64.99,'/images/products/-10.webp',3,3,1,'Coat','The Firefly Coat is a luminous masterpiece that captures the ethereal glow of fireflies on a starlit night, with its shimmering iridescent surface seamlessly shifting between electric blue, radiant green, and deep violet. Infused with micro-reflective technology, the fabric creates a bioluminescent effect that appears alive in motion, while its lightweight yet durable design provides warmth and breathability for any adventure. Subtle AI-engineered patterns woven into the material reveal intricate geometric designs under certain lighting, embodying the fusion of nature and technology. With a flowing silhouette, sleek high collar, and hidden magnetic fastenings, this wearable work of art blends futuristic aesthetics with nature’s magic.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Lumina Veil',79.99,'/images/products/-11.webp',3,4,1,'Coat','The Lumina Veil is a seamless fusion of elegance and technology, enveloping the wearer in a soft, ambient glow. Its AI-infused fiber network absorbs light during the day and emits a gentle luminescence at night, shifting from ethereal silver to twilight blue. Crafted from whisper-light, kinetic-responsive fabric, it moves like liquid metal, offering effortless fluidity. With an intelligent insulation system that subtly regulates warmth, the Lumina Veil balances comfort and celestial beauty.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Etherial Mirage Coat',74.99,'/images/products/pexels-michelangelo-buonarroti-8721201.webp',2,4,1,'Coat','A garment of ephemeral beauty, the Etherial Mirage Coat is crafted from AI-engineered fabric that appears to shift between dimensions. The translucent textile subtly fades in and out of perception under changing light, creating a ghostly, almost otherworldly presence. The coat’s AI-adaptive fibers absorb ambient energy, allowing it to shift between warm and cool tones depending on the environment. Weightless and whisper-thin, this is a garment that defies reality itself.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('ArcLight Trench',89.99,'/images/products/Woman_Modifies_Old_Thrift_Store_Clothes_To_Create_New_Outfits_And_Here_Are_21_Of_Her_Best_Works.webp',3,3,1,'Coat','Merges modern cybernetic design with timeless trench coat aesthetics, integrating AI-reactive circuitry into its structure. Microfiber energy channels glow subtly along the seams, evoking the brilliance of an electric storm. Its graphene-enhanced textile provides unmatched durability, while heat-mapping technology adjusts temperature zones for maximum comfort. With an elongated silhouette and sharp structural cuts, the ArcLight Trench is a beacon of both power and precision.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Nebula Cloak',20.99,'/images/products/-14.webp',1,3,1,'Coat','The Nebula Cloak is an AI-designed masterpiece that mimics the shifting hues of interstellar clouds, seamlessly reflecting deep space purples, cosmic blues, and shimmering golds as you move. Crafted from a fluid, weightless fabric, it drapes effortlessly while its self-adjusting thermal insulation adapts to your body temperature for ultimate comfort. Embedded microfiber light threads pulse softly, recreating the mesmerizing glow of distant galaxies. More than just a garment, the Nebula Cloak is a gateway to the stars.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Quantum Trench',29.99,'/images/products/-18.webp',2,3,1,'Coat','The Quantum Trench is a sleek, structured masterpiece that blends AI-generated geometry with cutting-edge materials for the modern explorer. Its ultra-lightweight nano-fiber weave offers durability, while the metallic sheen subtly shifts between gunmetal, midnight blue, and deep emerald, creating a futuristic cyberpunk aesthetic. Hidden smart pockets expand with a touch, seamlessly integrating storage without disrupting the minimalist silhouette. Designed for adaptability, it resists water, adjusts ventilation, and responds to movement with precision-engineered flexibility.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Eclipse Overcoat',19.99,'/images/products/87ed0e2556f4bdcfac37c01663ccc515.webp',1,4,1,'Coat','A vision of sleek sophistication, seamlessly blending shadow and light with its dynamic matte-black smart textile that absorbs and diffuses light for an otherworldly depth. Thin bioluminescent circuits run subtly along its seams, emitting a soft silver glow when activated. Designed with an AI-mapped ergonomic structure, it contours perfectly to the wearer’s form, ensuring unparalleled comfort and mobility. Whether in motion or at rest, the Eclipse Overcoat exudes quiet power and futuristic elegance.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('AeroFlow Duster',15.99,'/images/products/Embrace_the_Iridescent_Magic_with_this_Stylish_Look.webp',1,3,1,'Coat','Designed for the urban nomad, is the pinnacle of motion-responsive design, crafted from AI-woven hyperfiber that adjusts to the wearer’s stride. It billows weightlessly while maintaining perfect aerodynamic balance, creating a dynamic yet effortless flow. Embedded kinetic sensors subtly shift the fabric’s texture and tone, transitioning from a smooth metallic sheen in stillness to a rippling, liquid-like effect in motion. Feather-light yet highly resilient, it offers all-weather protection while exuding an avant-garde aesthetic.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Eclipse Reversible Cloak',99.99,'/images/products\innovative-sustainable-fashion-with-futuristic-recycled-geometric-patterns-iridescent-biodegradable-fabrics_1335075-6314.webp',2,3,1,'Coat','The Eclipse Reversible Cloak is a garment of dual identities, featuring a dual-sided AI-woven textile for instant transformation. The outer layer, crafted from deep-space nanofiber, absorbs and manipulates light, creating a mysterious, ink-like aesthetic. Flipped inside out, the reverse side reveals a high-luminescence finish that glows softly in ethereal gold, silver, or spectral blue. With a shape-shifting hood and AI-driven material memory, the Eclipse Cloak seamlessly adapts to any environment or occasion.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Synthwave Coat',65.99,'/images/products\guy_wearing_fashion_clothes__futuristic_style_by_coolarts223_dg0wso7-fullview.webp',2,4,1,'Coat','The Synthwave Coat is a bold tribute to neon-soaked dystopian dreams, pulsing with digital energy. Its AI-crafted material integrates micro-LED strands, enabling programmable light sequences that form shifting geometric designs, pulsing neon lines, or interactive visual displays. Featuring a high-collar silhouette, structured shoulders, and cybernetic detailing, it merges futuristic aesthetics with underground rebellion. More than just outerwear, the Synthwave Coat is a vision of the digital future.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Aeon Flux Coat',129.99,'/images/products\guy_wearing_fashion_clothes_dg0wsjn-fullview.webp',2,4,1,'Coat','The Aeon Flux Coat is a lightweight, kinetic-responsive garment designed for high-speed movement in urban environments, morphing its texture based on acceleration and wind flow. Its AI-augmented aerodynamics dynamically adjust fabric tension and layering, optimizing performance in changing conditions. The iridescent surface ripples with shifting shades of deep violet, cobalt, and ember-red, evoking the energy of an atmospheric storm. With a streamlined, futuristic design, the Aeon Flux Coat is built for the pioneers of tomorrow.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Astral Phantom Cloak',199.99,'/images/products\couple_wearing_fashion_clothes__futuristic_style_by_coolarts223_dg0xcsn-fullview.webp',3,3,1,'Coat','The Astral Phantom Cloak is a fusion of AI-driven technology and avant-garde design, crafted for those who move between worlds. Its kinetic-adaptive fabric shifts with motion, creating a liquid-like flow while radiating a luminous white glow that shimmers with hints of silver and pearlescent sheen. Engineered for adaptability, it features self-regulating insulation, aerodynamic layering, and a chameleon-like surface that responds to environmental conditions. With a structured silhouette and AI-mapped ergonomic precision, this cloak is the ultimate expression of futuristic elegance and innovation.');

INSERT INTO "Item" ("itemname","itemprice","imageurl","fkitemgenderid","fksizeid","fktypeid","itemtype","itemdescription")
VALUES('Cyber Coat',999.99,'/images/products\the_musk.webp',2,4,1,'Coat','A state-of-the-art garment that integrates AI-driven adaptive camouflage, breaking the barriers of visibility. Embedded light-bending fibers allow its surface to subtly blend with surroundings, creating a chameleon-like shimmer of color and transparency. Reacting to body heat and movement, it generates a mesmerizing aura effect in motion. Constructed with ultra-lightweight graphene threads, it combines unparalleled durability with a sleek, futuristic aesthetic.');
--
-- END - Items
--

commit;