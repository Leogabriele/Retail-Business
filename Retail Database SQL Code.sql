create database onlineretail;
USE onlineretail;
-- Creating the 'Customer' table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(255)
);
-- Creating the index---
CREATE INDEX Customer_index
ON customer(CustomerID);
Select *from Customer;
-- Creating the 'Category' table
CREATE TABLE Category ( 
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255)
);
-- Creating the 'Seller' table
CREATE TABLE Seller (
    SellerID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255),
    StoreName VARCHAR(255)
);
-- Creating the 'Product' table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Price DECIMAL(10, 2),
    CategoryID INT,
    SellerID INT,
    StockQuantity INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
    FOREIGN KEY (SellerID) REFERENCES Seller(SellerID)
);

-- Creating the 'Ord' table
CREATE TABLE Ord (
    OrderID INT PRIMARY KEY,
    Date DATE,
    CustomerID INT,
    Status VARCHAR(255),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Creating the 'Inquiry' table
CREATE TABLE Inquiry (
    InquiryID INT PRIMARY KEY,
    CustomerID INT,
    InquiryText TEXT,
    ResponseText TEXT,
    Status VARCHAR(255),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Creating the 'Review' table
CREATE TABLE Review (
    ReviewID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    Rating INT,
    Comment TEXT,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Creating the 'OrderDetail' table
CREATE TABLE OrderDetail (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Ord(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Creating the 'Shipment' table
CREATE TABLE Shipment (
    ShipmentID INT PRIMARY KEY,
    OrderID INT,
     ShipmentDate DATE,
    TrackingNumber VARCHAR(255),
    DeliveryStatus VARCHAR(255),
    FOREIGN KEY (OrderID) REFERENCES Ord(OrderID)
);

-- Creating the 'Transaction' table
CREATE TABLE Transaction (
    TransactionID INT PRIMARY KEY,
    OrderID INT,
    TransactionAmount DECIMAL(10, 2),
    TransactionDate DATE,
    PaymentMethod VARCHAR(255),
    FOREIGN KEY (OrderID) REFERENCES Ord(OrderID)
); 
INSERT INTO Customer (CustomerID, Name, Email, Address, PhoneNumber) VALUES
(1001, 'John Doe', 'john.doe@example.com', '123 Main St', '123-456-7890'),
(1002, 'Jane Smith', 'jane.smith@example.com', '456 Elm  St', '987-654-3210'),
(1003, 'Alice Johnson', 'alice.johnson@example.com', '789 Pine St', '111-222-3333'),
(1004, 'Bob White', 'bob.white@example.com', '101 Maple St', '444-555-6666'),
(1005, 'Charlie Brown', 'charlie.brown@example.com', '202 Oak St', '777-888-9999'),
(1006, 'GeneratedName1006', 'user1006@example.com', '1006 Oak St', '555-0001006'),
(1007, 'GeneratedName1007', 'user1007@example.com', '1007 Oak St', '555-0001007'),
(1008, 'GeneratedName1008', 'user1008@example.com', '1008 Oak St', '555-0001008'),
(1009, 'GeneratedName1009', 'user1009@example.com', '1009 Oak St', '555-0001009'),
(1010, 'GeneratedName1010', 'user1010@example.com', '1010 Oak St', '555-0001010'),
(1011, 'GeneratedName1011', 'user1011@example.com', '1011 Oak St', '555-0001011'),
(1012, 'GeneratedName1012', 'user1012@example.com', '1012 Oak St', '555-0001012'),
(1013, 'GeneratedName1013', 'user1013@example.com', '1013 Oak St', '555-0001013'),
(1014, 'GeneratedName1014', 'user1014@example.com', '1014 Oak St', '555-0001014'),
(1015, 'GeneratedName1015', 'user1015@example.com', '1015 Oak St', '555-0001015'),
(1016, 'GeneratedName1016', 'user1016@example.com', '1016 Oak St', '555-0001016'),
(1017, 'GeneratedName1017', 'user1017@example.com', '1017 Oak St', '555-0001017'),
(1018, 'GeneratedName1018', 'user1018@example.com', '1018 Oak St', '555-0001018'),
(1019, 'GeneratedName1019', 'user1019@example.com', '1019 Oak St', '555-0001019'),
(1020, 'GeneratedName1020', 'user1020@example.com', '1020 Oak St', '555-0001020'),
(1021, 'GeneratedName1021', 'user1021@example.com', '1021 Oak St', '555-0001021'),
(1022, 'GeneratedName1022', 'user1022@example.com', '1022 Oak St', '555-0001022'),
(1023, 'GeneratedName1023', 'user1023@example.com', '1023 Oak St', '555-0001023'),
(1024, 'GeneratedName1024', 'user1024@example.com', '1024 Oak St', '555-0001024'),
(1025, 'GeneratedName1025', 'user1025@example.com', '1025 Oak St', '555-0001025'),
(1026, 'GeneratedName1026', 'user1026@example.com', '1026 Oak St', '555-0001026'),
(1027, 'GeneratedName1027', 'user1027@example.com', '1027 Oak St', '555-0001027'),
(1028, 'GeneratedName1028', 'user1028@example.com', '1028 Oak St', '555-0001028'),
(1029, 'GeneratedName1029', 'user1029@example.com', '1029 Oak St', '555-0001029'),
(1030, 'GeneratedName1030', 'user1030@example.com', '1030 Oak St', '555-0001030'),
(1031, 'GeneratedName1031', 'user1031@example.com', '1031 Oak St', '555-0001031'),
(1032, 'GeneratedName1032', 'user1032@example.com', '1032 Oak St', '555-0001032'),
(1033, 'GeneratedName1033', 'user1033@example.com', '1033 Oak St', '555-0001033'),
(1034, 'GeneratedName1034', 'user1034@example.com', '1034 Oak St', '555-0001034'),
(1035, 'GeneratedName1035', 'user1035@example.com', '1035 Oak St', '555-0001035'),
(1036, 'GeneratedName1036', 'user1036@example.com', '1036 Oak St', '555-0001036'),
(1037, 'GeneratedName1037', 'user1037@example.com', '1037 Oak St', '555-0001037'),
(1038, 'GeneratedName1038', 'user1038@example.com', '1038 Oak St', '555-0001038'),
(1039, 'GeneratedName1039', 'user1039@example.com', '1039 Oak St', '555-0001039'),
(1040, 'GeneratedName1040', 'user1040@example.com', '1040 Oak St', '555-0001040'),
(1041, 'GeneratedName1041', 'user1041@example.com', '1041 Oak St', '555-0001041'),
(1042, 'GeneratedName1042', 'user1042@example.com', '1042 Oak St', '555-0001042'),
(1043, 'GeneratedName1043', 'user1043@example.com', '1043 Oak St', '555-0001043'),
(1044, 'GeneratedName1044', 'user1044@example.com', '1044 Oak St', '555-0001044'),
(1045, 'GeneratedName1045', 'user1045@example.com', '1045 Oak St', '555-0001045'),
(1046, 'GeneratedName1046', 'user1046@example.com', '1046 Oak St', '555-0001046'),
(1047, 'GeneratedName1047', 'user1047@example.com', '1047 Oak St', '555-0001047'),
(1048, 'GeneratedName1048', 'user1048@example.com', '1048 Oak St', '555-0001048'),
(1049, 'GeneratedName1049', 'user1049@example.com', '1049 Oak St', '555-0001049'),
(1050, 'GeneratedName1050', 'user1050@example.com', '1050 Oak St', '555-0001050');

SELECT * FROM customer; 
INSERT INTO Category (CategoryID, CategoryName) VALUES
(1001, 'Electronics'),
(1002, 'Accessories'),
(1003, 'Clothing'),
(1004, 'Books'),
(1005, 'Home & Kitchen'),
(1006, 'Furniture'),
(1007, 'Toys'),
(1008, 'Sports Equipment'),
(1009, 'Outdoor Gear'),
(1010, 'Board Games'),
(1011, 'Gardening Supplies'),
(1012, 'Automotive Parts'),
(1013, 'Music Instruments'),
(1014, 'Office Supplies'),
(1015, 'Baby Products'),
(1016, 'Gourmet Foods'),
(1017, 'Shoes'),
(1018, 'Handmade Goods'),
(1019, 'Health & Beauty'),
(1020, 'Jewelry'),
(1021, 'Tools & Home Improvement'),
(1022, 'Pet Supplies'),
(1023, 'Video Games'),
(1024, 'Movies & TV Shows'),
(1025, 'Computer & Accessories'),
(1026, 'Smartphones & Gadgets'),
(1027, 'Photography Equipment'),
(1028, 'Sportswear'),
(1029, 'Swimwear'),
(1030, 'Winter Sports'),
(1031, 'Fishing Gear'),
(1032, 'Camping Equipment'),
(1033, 'Biking & Accessories'),
(1034, 'Running Gear'),
(1035, 'Fitness Equipment'),
(1036, 'Yoga & Pilates'),
(1037, 'Skincare Products'),
(1038, 'Haircare Products'),
(1039, 'Makeup & Cosmetics'),
(1040, 'Perfumes & Fragrances'),
(1041, 'Bath & Body Products'),
(1042, 'Men’s Clothing'),
(1043, 'Women’s Clothing'),
(1044, 'Children’s Clothing'),
(1045, 'Footwear'),
(1046, 'Bags & Wallets'),
(1047, 'Watches'),
(1048, 'Eyewear'),
(1049, 'Hats & Accessories'),
(1050, 'Travel Accessories');
select * from category;

 INSERT INTO Seller (SellerID, Name, ContactInfo, StoreName) VALUES
(1001, 'BestElectronics', 'contact@bestelectronics.com', 'Best Electronics Store'),
(1002, 'TechWorld', 'contact@techworld.com', 'Tech World'),
(1003, 'SoundGear', 'contact@soundgear.com', 'Sound Gear'),
(1004, 'TypeIt', 'contact@typeit.com', 'TypeIt Keyboards'),
(1005, 'ClickNGo', 'contact@clickngo.com', 'ClickNGo'),
(1006, 'AdventureGear', 'contact@adventuregear.com', 'Adventure Gear'),
(1007, 'BeautyBasics', 'contact@beautybasics.com', 'Beauty Basics'),
(1008, 'CuisineCorner', 'contact@cuisinecorner.com', 'Cuisine Corner'),
(1009, 'DressDazzle', 'contact@dressdazzle.com', 'Dress Dazzle'),
(1010, 'EcoEssentials', 'contact@ecoessentials.com', 'Eco Essentials'),
(1011, 'FitnessFinds', 'contact@fitnessfinds.com', 'Fitness Finds'),
(1012, 'GardenGoods', 'contact@gardengoods.com', 'Garden Goods'),
(1013, 'HandmadeHaven', 'contact@handmadehaven.com', 'Handmade Haven'),
(1014, 'InnovateIT', 'contact@innovateit.com', 'Innovate IT'),
(1015, 'JewelJunction', 'contact@jeweljunction.com', 'Jewel Junction'),
(1016, 'KidsKingdom', 'contact@kidskingdom.com', 'Kids Kingdom'),
(1017, 'LuxeLife', 'contact@luxelife.com', 'Luxe Life'),
(1018, 'MotorMania', 'contact@motormania.com', 'Motor Mania'),
(1019, 'NaturaNeeds', 'contact@naturaneeds.com', 'Natura Needs'),
(1020, 'OrganicOrigins', 'contact@organicorigins.com', 'Organic Origins'),
(1021, 'PetParadise', 'contact@petparadise.com', 'Pet Paradise'),
(1022, 'QuirkyQuilts', 'contact@quirkyquilts.com', 'Quirky Quilts'),
(1023, 'RetroRevival', 'contact@retrorevival.com', 'Retro Revival'),
(1024, 'SportySpirits', 'contact@sportyspirits.com', 'Sporty Spirits'),
(1025, 'TechTrends', 'contact@techtrends.com', 'Tech Trends'),
(1026, 'UrbanUpbeat', 'contact@urbanupbeat.com', 'Urban Upbeat'),
(1027, 'VibrantVeggies', 'contact@vibrantveggies.com', 'Vibrant Veggies'),
(1028, 'WellnessWorld', 'contact@wellnessworld.com', 'Wellness World'),
(1029, 'XtremeXtras', 'contact@xtremextras.com', 'Xtreme Xtras'),
(1030, 'YogaYard', 'contact@yogayard.com', 'Yoga Yard'),
(1031, 'ZestZone', 'contact@zestzone.com', 'Zest Zone'),
(1032, 'ArtifactAntiques', 'contact@artifactantiques.com', 'Artifact Antiques'),
(1033, 'BakeBoutique', 'contact@bakeboutique.com', 'Bake Boutique'),
(1034, 'CraftCorner', 'contact@craftcorner.com', 'Craft Corner'),
(1035, 'DecorDreams', 'contact@decordreams.com', 'Decor Dreams'),
(1036, 'ElectroElite', 'contact@electroelite.com', 'Electro Elite'),
(1037, 'FloralFancy', 'contact@floralfancy.com', 'Floral Fancy'),
(1038, 'GlamGallery', 'contact@glamgallery.com', 'Glam Gallery'),
(1039, 'HealthHarbor', 'contact@healthharbor.com', 'Health Harbor'),
(1040, 'InkInspire', 'contact@inkinspire.com', 'Ink Inspire'),
(1041, 'JourneyJewels', 'contact@journeyjewels.com', 'Journey Jewels'),
(1042, 'KnickKnack', 'contact@knickknack.com', 'Knick Knack'),
(1043, 'LeisureLounge', 'contact@leisurelounge.com', 'Leisure Lounge'),
(1044, 'MealMakers', 'contact@mealmakers.com', 'Meal Makers'),
(1045, 'NestNaturals', 'contact@nestnaturals.com', 'Nest Naturals'),
(1046, 'OutdoorOasis', 'contact@outdooroasis.com', 'Outdoor Oasis'),
(1047, 'PuzzlePalace', 'contact@puzzlepalace.com', 'Puzzle Palace'),
(1048, 'QuaintQuilts', 'contact@quaintquilts.com', 'Quaint Quilts'),
(1049, 'RapidRides', 'contact@rapidrides.com', 'Rapid Rides'),
(1050, 'StyleStudio', 'contact@stylestudio.com', 'Style Studio');

INSERT INTO Product (ProductID, Name, Price, CategoryID, SellerID, StockQuantity) VALUES
(1001, 'Laptop', 999.99, 1001, 1001, 10),
(1002, 'Phone', 499.99, 1001, 1002, 20),
(1003, 'Headphones', 49.99, 1002, 1003, 30),
(1004, 'Keyboard', 29.99, 1002, 1004, 40),
(1005, 'Mouse', 19.99, 1002, 1005, 50),
(1006, 'Tablet', 299.99, 1001, 1006, 15),
(1007, 'Smartwatch', 199.99, 1001, 1007, 25),
(1008, 'Bluetooth Speaker', 59.99, 1002, 1008, 35),
(1009, 'External Hard Drive', 89.99, 1002, 1009, 45),
(1010, 'Webcam', 39.99, 1002, 1010, 55),
(1011, 'Gaming Console', 399.99, 1001, 1011, 12),
(1012, 'Camera', 699.99, 1001, 1012, 18),
(1013, 'Printer', 129.99, 1002, 1013, 22),
(1014, 'Monitor', 199.99, 1001, 1014, 32),
(1015, 'Wireless Router', 49.99, 1002, 1015, 42),
(1016, 'E-reader', 129.99, 1001, 1016, 52),
(1017, 'Smart Light Bulb', 15.99, 1002, 1017, 60),
(1018, 'VR Headset', 299.99, 1001, 1018, 17),
(1019, 'Fitness Tracker', 59.99, 1001, 1019, 27),
(1020, 'Drone', 149.99, 1001, 1020, 37),
(1021, 'Wireless Charger', 29.99, 1002, 1021, 47),
(1022, 'Security Camera', 79.99, 1002, 1022, 57),
(1023, 'Graphic Tablet', 199.99, 1002, 1023, 14),
(1024, 'Noise Cancelling Headphones', 249.99, 1002, 1024, 24),
(1025, 'Smart Thermostat', 199.99, 1002, 1025, 34),
(1026, 'Action Camera', 199.99, 1001, 1026, 44),
(1027, 'Smart Lock', 99.99, 1002, 1027, 54),
(1028, 'Gaming Chair', 149.99, 1002, 1028, 16),
(1029, 'Smart Scale', 49.99, 1002, 1029, 26),
(1030, 'Robot Vacuum', 299.99, 1002, 1030, 36),
(1031, 'Electric Toothbrush', 49.99, 1003, 1031, 46),
(1032, 'Hair Dryer', 79.99, 1003, 1032, 56),
(1033, 'Blender', 99.99, 1005, 1033, 15),
(1034, 'Coffee Maker', 129.99, 1005, 1034, 25),
(1035, 'Microwave Oven', 199.99, 1005, 1035, 35),
(1036, 'Refrigerator', 499.99, 1005, 1036, 10),
(1037, 'Dishwasher', 299.99, 1005, 1037, 20),
(1038, 'Yoga Mat', 29.99, 1003, 1038, 40),
(1039, 'Running Shoes',  79.99, 1003, 1039, 50),
(1040, 'Tennis Racket', 59.99, 1003, 1040, 30),
(1041, 'Basketball', 29.99, 1003, 1041, 45),
(1042, 'Football', 34.99, 1003, 1042, 55),
(1043, 'Golf Clubs', 399.99, 1003, 1043, 18),
(1044, 'Baseball Glove', 49.99, 1003, 1044, 28),
(1045, 'Skateboard', 99.99, 1003, 1045, 38),
(1046, 'Bicycle', 299.99, 1003, 1046, 48),
(1047, 'Helmet', 49.99, 1003, 1047, 58),
(1048, 'Sunglasses', 99.99, 1004, 1048, 17),
(1049, 'Backpack', 59.99, 1004, 1049, 27),
(1050, 'Travel Adapter', 19.99, 1004, 1050, 37);
select *from product;

INSERT INTO Ord (OrderID, Date, CustomerID, Status) VALUES
(1001, '2023-10-01', 1001, 'Completed'),
(1002, '2023-10-02', 1002, 'Pending'),
(1003, '2023-10-03', 1003, 'Cancelled'),
(1004, '2023-10-04', 1004, 'Processing'),
(1005, '2023-10-05', 1005, 'Completed'),
(1006, '2023-10-06', 1006, 'Completed'),
(1007, '2023-10-07', 1007, 'Pending'),
(1008, '2023-10-08', 1008, 'Cancelled'),
(1009, '2023-10-09', 1009, 'Processing'),
(1010, '2023-10-10', 1010, 'Completed'),
(1011, '2023-10-11', 1011, 'Pending'),
(1012, '2023-10-12', 1012, 'Cancelled'),
(1013, '2023-10-13', 1013, 'Processing'),
(1014, '2023-10-14', 1014, 'Completed'),
(1015, '2023-10-15', 1015, 'Pending'),
(1016, '2023-10-16', 1016, 'Cancelled'),
(1017, '2023-10-17', 1017, 'Processing'),
(1018, '2023-10-18', 1018, 'Completed'),
(1019, '2023-10-19', 1019, 'Pending'),
(1020, '2023-10-20', 1020, 'Cancelled'),
(1021, '2023-10-21', 1021, 'Processing'),
(1022, '2023-10-22', 1022, 'Completed'),
(1023, '2023-10-23', 1023, 'Pending'),
(1024, '2023-10-24', 1024, 'Cancelled'),
(1025, '2023-10-25', 1025, 'Processing'),
(1026, '2023-10-26', 1026, 'Completed'),
(1027, '2023-10-27', 1027, 'Pending'),
(1028, '2023-10-28', 1028, 'Cancelled'),
(1029, '2023-10-29', 1029, 'Processing'),
(1030, '2023-10-30', 1030, 'Completed'),
(1031, '2023-10-31', 1031, 'Pending'),
(1032, '2023-11-01', 1032, 'Cancelled'),
(1033, '2023-11-02', 1033, 'Processing'),
(1034, '2023-11-03', 1034, 'Completed'),
(1035, '2023-11-04', 1035, 'Pending'),
(1036, '2023-11-05', 1036, 'Cancelled'),
(1037, '2023-11-06', 1037, 'Processing'),
(1038, '2023-11-07', 1038, 'Completed'),
(1039, '2023-11-08', 1039, 'Pending'),
(1040, '2023-11-09', 1040, 'Cancelled'),
(1041, '2023-11-10', 1041, 'Processing'),
(1042, '2023-11-11', 1042, 'Completed'),
(1043, '2023-11-12', 1043, 'Pending'),
(1044, '2023-11-13', 1044, 'Cancelled'),
(1045, '2023-11-14', 1045, 'Processing'),
(1046, '2023-11-15', 1046, 'Completed'),
(1047, '2023-11-16', 1047, 'Pending'),
(1048, '2023-11-17', 1048, 'Cancelled'),
(1049, '2023-11-18', 1049, 'Processing'),
(1050, '2023-11-19', 1050, 'Completed');
select *from ord;

INSERT INTO Inquiry (InquiryID, CustomerID, InquiryText, ResponseText, Status) VALUES
(1001, 1001, 'When will my order ship?', 'Your order will ship tomorrow.', 'Answered'),
(1002, 1002, 'How do I return a product?', 'Please contact customer service.', 'Pending'),
(1003, 1003, 'Do you have this product in blue?', 'Yes, we do have it in blue.', 'Answered'),
(1004, 1004, 'How long is the warranty?', 'The warranty is for one year.', 'Answered'),
(1005, 1005, 'Can I change my shipping address?', 'Please call us ASAP to change the address.', 'Pending'),
(1006, 1006, 'Is this product available in stock?', 'Yes, it is currently in stock.', 'Answered'),
(1007, 1007, 'Can I get a discount?', 'Currently, we do not have any discounts.', 'Pending'),
(1008, 1008, 'What are the payment options?', 'We accept credit cards, PayPal, and direct bank transfer.', 'Answered'),
(1009, 1009, 'Is express shipping available?', 'Yes, express shipping is available for an extra charge.', 'Answered'),
(1010, 1010, 'Can I track my order?', 'Yes, you can track your order using the tracking number provided.', 'Pending'),
(1011, 1011, 'Do you ship internationally?', 'Yes, we ship to select international destinations.', 'Answered'),
(1012, 1012, 'How do I cancel my order?', 'Please contact customer service for order cancellation.', 'Pending'),
(1013, 1013, 'Are there any warranty extensions available?', 'We do offer extended warranties at an additional cost.', 'Answered'),
(1014, 1014, 'Do you have gift wrapping options?', 'Yes, we offer gift wrapping for a small fee.', 'Answered'),
(1015, 1015, 'What is your return policy?', 'We have a 30-day return policy.', 'Pending'),
(1016, 1016, 'What sizes are available for this product?', 'Sizes range from Small to XXL.', 'Answered'),
(1017, 1017, 'Is this product eco-friendly?', 'Yes, it is made with eco-friendly materials.', 'Answered'),
(1018, 1018, 'Can I get a refund?', 'Refunds are processed according to our policy.', 'Pending'),
(1019, 1019, 'Is there a user manual included?', 'Yes, a user manual is included with the product.', 'Answered'),
(1020, 1020, 'What colors are available?', 'This product is available in red, blue, and green.', 'Answered'),
(1021, 1021, 'How can I change my order?', 'Please contact us to change your order details.', 'Pending'),
(1022, 1022, 'Do you offer bulk discounts?', 'Bulk discounts are available on select products.', 'Answered'),
(1023, 1023, 'What is the estimated delivery time?', 'Delivery takes approximately 3-5 business days.', 'Answered'),
(1024, 1024, 'Can I order by phone?', 'Yes, phone orders are accepted.', 'Pending'),
(1025, 1025, 'Are your products allergy-free?', 'Please check the product description for allergy information.', 'Answered'),
(1026, 1026, 'Do you offer installation services?', 'We do offer installation services for certain products.', 'Answered'),
(1027, 1027, 'Is this item covered by insurance?', 'Insurance options are available at checkout.', 'Pending'),
(1028, 1028, 'Can I schedule a delivery date?', 'Scheduled delivery is available for select items.', 'Answered'),
(1029, 1029, 'Is there a store near me?', 'Please check our website for store locations.', 'Answered'),
(1030, 1030, 'Do you offer product warranties?', 'Most products come with a manufacturer warranty.', 'Pending'),
(1031, 1031, 'How do I subscribe to your newsletter?', 'You can subscribe on our website.', 'Answered'),
(1032, 1032, 'Can I purchase a gift card?', 'Gift cards are available for purchase online.', 'Answered'),
(1033, 1033, 'Is this material waterproof?', 'This material is water-resistant but not fully waterproof.', 'Pending'),
(1034, 1034, 'Do you offer free shipping?', 'Free shipping is available on orders over a certain amount.', 'Answered'),
(1035, 1035, 'What is your privacy policy?', 'Our privacy policy can be found on our website.', 'Answered'),
(1036, 1036, 'Can I request a custom order?', 'Custom orders are accepted depending on the product.', 'Pending'),
(1037, 1037, 'Are there any ongoing sales?', 'Current sales are listed on our homepage.', 'Answered'),
(1038, 1038, 'Do you sell refurbished products?', 'We do sell certified refurbished products.', 'Answered'),
(1039, 1039, 'How do I apply a promo code?', 'You can apply a promo code at checkout.', 'Pending'),
(1040, 1040, 'Can I exchange an item?', 'Item exchanges are subject to our exchange policy.', 'Answered'),
(1041, 1041, 'What payment methods do you accept?', 'We accept credit cards, PayPal, and other payment methods.', 'Answered'),
(1042, 1042, 'Is online payment secure?', 'We use secure payment gateways for all transactions.', 'Pending'),
(1043, 1043, 'How do I track my shipment?', 'Shipment tracking is available through your order details.', 'Answered'),
(1044, 1044, 'Do you offer international shipping?', 'We ship to many countries internationally.', 'Answered'),
(1045, 1045, 'What is the expiry date of this product?', 'The expiry date is listed on the product packaging.', 'Pending'),
(1046, 1046, 'Can I order in bulk?', 'Bulk orders can be placed directly through our sales team.', 'Answered'),
(1047, 1047, 'Are there any additional fees?', 'All applicable fees are displayed at checkout.', 'Answered'),
(1048, 1048, 'How do I delete my account?', 'Please contact customer support to delete your account.', 'Pending'),
(1049, 1049, 'What are the care instructions?', 'Care instructions are provided with the product.', 'Answered'),
(1050, 1050, 'Can I change the color of my order?', 'Color changes depend on the product availability.', 'Pending');
select *from inquiry;

INSERT INTO Review (ReviewID, ProductID, CustomerID, Rating, Comment) VALUES
(1001, 1001, 1001, 5, 'Great product!'),
(1002, 1002, 1002, 4, 'Good value for money.'),
(1003, 1003, 1003, 3, 'Average headphones.'),
(1004, 1004, 1004, 2, 'Not very comfortable.'),
(1005, 1005, 1005, 1, 'Stopped working after a week.'),
(1006, 1006, 1006, 4, 'Meets expectations.'),
(1007, 1007, 1007, 5, 'Excellent quality!'),
(1008, 1008, 1008, 3, 'Good, but could be better.'),
(1009, 1009, 1009, 2, 'Quality not as expected.'),
(1010, 1010, 1010, 1, 'Arrived damaged.'),
(1011, 1011, 1011, 4, 'Very useful.'),
(1012, 1012, 1012, 5, 'Love this product!'),
(1013, 1013, 1013, 3, 'Decent, but I have some issues.'),
(1014, 1014, 1014, 2, 'Could be improved.'),
(1015, 1015, 1015, 1, 'Not worth the price.'),
(1016, 1016, 1016, 4, 'Satisfied with the purchase.'),
(1017, 1017, 1017, 5, 'Outstanding performance.'),
(1018, 1018, 1018, 3, 'Average performance.'),
(1019, 1019, 1019, 2, 'Less than expected.'),
(1020, 1020, 1020, 1, 'Poor build quality.'),
(1021, 1021, 1021, 4, 'Really good.'),
(1022, 1022, 1022, 5, 'Exceeds my expectations.'),
(1023, 1023, 1023, 3, 'Fine, but not great.'),
(1024, 1024, 1024, 2, 'Disappointed.'),
(1025, 1025, 1025, 1, 'Would not recommend.'),
(1026, 1026, 1026, 4, 'Pretty good overall.'),
(1027, 1027, 1027, 5, 'Fantastic product!'),
(1028, 1028, 1028, 3, 'Okay, but Ive seen better.'),
(1029, 1029, 1029, 2, 'Not what I expected.'),
(1030, 1030, 1030, 1, 'One star, didn’t last long.'),
(1031, 1031, 1031, 4, 'Good purchase.'),
(1032, 1032, 1032, 5, 'Very happy with this.'),
(1033, 1033, 1033, 3, 'It’s okay.'),
(1034, 1034, 1034, 2, 'Not great.'),
(1035, 1035, 1035, 1, 'Very disappointed.'),
(1036, 1036, 1036, 4, 'Good product.'),
(1037, 1037, 1037, 5, 'Highly recommend.'),
(1038, 1038, 1038, 3, 'Not bad.'),
(1039, 1039, 1039, 2, 'Below expectations.'),
(1040, 1040, 1040, 1, 'Poor quality.'),
(1041, 1041, 1041, 4, 'Satisfactory.'),
(1042, 1042, 1042, 5, 'Very effective.'),
(1043, 1043, 1043, 3, 'Middle of the road.'),
(1044, 1044, 1044, 2, 'Not impressed.'),
(1045, 1045, 1045, 1, 'Does not work as expected.'),
(1046, 1046, 1046, 4, 'Quite good.'),
(1047, 1047, 1047, 5, 'Amazing quality.'),
(1048, 1048, 1048, 3, 'Fair enough.'),
(1049, 1049, 1049, 2, 'Could be better.'),
(1050, 1050, 1050, 1, 'Not satisfied at all.');
select * from review;

INSERT INTO OrderDetail (OrderDetailID, OrderID, ProductID, Quantity) VALUES
(1001, 1001, 1001, 1),
(1002, 1002, 1002, 2),
(1003, 1003, 1003, 3),
(1004, 1004, 1004, 4),
(1005, 1005, 1005, 5),
(1006, 1006, 1006, 1),
(1007, 1007, 1007, 2),
(1008, 1008, 1008, 3),
(1009, 1009, 1009, 4),
(1010, 1010, 1010, 5),
(1011, 1011, 1011, 1),
(1012, 1012, 1012, 2),
(1013, 1013, 1013, 3),
(1014, 1014, 1014, 4),
(1015, 1015, 1015, 5),
(1016, 1016, 1016, 1),
(1017, 1017, 1017, 2),
(1018, 1018, 1018, 3),
(1019, 1019, 1019, 4),
(1020, 1020, 1020, 5),
(1021, 1021, 1021, 1),
(1022, 1022, 1022, 2),
(1023, 1023, 1023, 3),
(1024, 1024, 1024, 4),
(1025, 1025, 1025, 5),
(1026, 1026, 1026, 1),
(1027, 1027, 1027, 2),
(1028, 1028, 1028, 3),
(1029, 1029, 1029, 4),
(1030, 1030, 1030, 5),
(1031, 1031, 1031, 1),
(1032, 1032, 1032, 2),
(1033, 1033, 1033, 3),
(1034, 1034, 1034, 4),
(1035, 1035, 1035, 5),
(1036, 1036, 1036, 1),
(1037, 1037, 1037, 2),
(1038, 1038, 1038, 3),
(1039, 1039, 1039, 4),
(1040, 1040, 1040, 5),
(1041, 1041, 1041, 1),
(1042, 1042, 1042, 2),
(1043, 1043, 1043, 3),
(1044, 1044, 1044, 4),
(1045, 1045, 1045, 5),
(1046, 1046, 1046, 1),
(1047, 1047, 1047, 2),
(1048, 1048, 1048, 3),
(1049, 1049, 1049, 4),
(1050, 1050, 1050, 5);

INSERT INTO Shipment (ShipmentID, OrderID, ShipmentDate, TrackingNumber, DeliveryStatus) VALUES
(1001, 1001, '2023-10-01', 'TN001', 'Delivered'),
(1002, 1002, '2023-10-02', 'TN002', 'In Transit'),
(1003, 1003, '2023-10-03', 'TN003', 'Delivered'),
(1004, 1004, '2023-10-04', 'TN004', 'Pending'),
(1005, 1005, '2023-10-05', 'TN005', 'Delivered'),
(1006, 1006, '2023-10-06', 'TN006', 'In Transit'),
(1007, 1007, '2023-10-07', 'TN007', 'Pending'),
(1008, 1008, '2023-10-08', 'TN008', 'Delivered'),
(1009, 1009, '2023-10-09', 'TN009', 'In Transit'),
(1010, 1010, '2023-10-10', 'TN010', 'Pending'),
(1011, 1011, '2023-10-11', 'TN011', 'Delivered'),
(1012, 1012, '2023-10-12', 'TN012', 'In Transit'),
(1013, 1013, '2023-10-13', 'TN013', 'Pending'),
(1014, 1014, '2023-10-14', 'TN014', 'Delivered'),
(1015, 1015, '2023-10-15', 'TN015', 'In Transit'),
(1016, 1016, '2023-10-16', 'TN016', 'Pending'),
(1017, 1017, '2023-10-17', 'TN017', 'Delivered'),
(1018, 1018, '2023-10-18', 'TN018', 'In Transit'),
(1019, 1019, '2023-10-19', 'TN019', 'Pending'),
(1020, 1020, '2023-10-20', 'TN020', 'Delivered'),
(1021, 1021, '2023-10-21', 'TN021', 'In Transit'),
(1022, 1022, '2023-10-22', 'TN022', 'Pending'),
(1023, 1023, '2023-10-23', 'TN023', 'Delivered'),
(1024, 1024, '2023-10-24', 'TN024', 'In Transit'),
(1025, 1025, '2023-10-25', 'TN025', 'Pending'),
(1026, 1026, '2023-10-26', 'TN026', 'Delivered'),
(1027, 1027, '2023-10-27', 'TN027', 'In Transit'),
(1028, 1028, '2023-10-28', 'TN028', 'Pending'),
(1029, 1029, '2023-10-29', 'TN029', 'Delivered'),
(1030, 1030, '2023-10-30', 'TN030', 'In Transit'),
(1031, 1031, '2023-10-31', 'TN031', 'Pending'),
(1032, 1032, '2023-11-01', 'TN032', 'Delivered'),
(1033, 1033, '2023-11-02', 'TN033', 'In Transit'),
(1034, 1034, '2023-11-03', 'TN034', 'Pending'),
(1035, 1035, '2023-11-04', 'TN035', 'Delivered'),
(1036, 1036, '2023-11-05', 'TN036', 'In Transit'),
(1037, 1037, '2023-11-06', 'TN037', 'Pending'),
(1038, 1038, '2023-11-07', 'TN038', 'Delivered'),
(1039, 1039, '2023-11-08', 'TN039', 'In Transit'),
(1040, 1040, '2023-11-09', 'TN040', 'Pending'),
(1041, 1041, '2023-11-10', 'TN041', 'Delivered'),
(1042, 1042, '2023-11-11', 'TN042', 'In Transit'),
(1043, 1043, '2023-11-12', 'TN043', 'Pending'),
(1044, 1044, '2023-11-13', 'TN044', 'Delivered'),
(1045, 1045, '2023-11-14', 'TN045', 'In Transit'),
(1046, 1046, '2023-11-15', 'TN046', 'Pending'),
(1047, 1047, '2023-11-16', 'TN047', 'Delivered'),
(1048, 1048, '2023-11-17', 'TN048', 'In Transit'),
(1049, 1049, '2023-11-18', 'TN049', 'Pending'),
(1050, 1050, '2023-11-19', 'TN050', 'Delivered');

INSERT INTO Transaction (TransactionID, OrderID, TransactionAmount, TransactionDate, PaymentMethod) VALUES
(1001, 1001, 999.99, '2023-10-01', 'Credit Card'),
(1002, 1002, 999.98, '2023-10-02', 'Debit Card'),
(1003, 1003, 149.97, '2023-10-03', 'PayPal'),
(1004, 1004, 119.96, '2023-10-04', 'Bank Transfer'),
(1005, 1005, 99.95, '2023-10-05', 'Cash'),
(1006, 1006, 999.94, '2023-10-06', 'Credit Card'),
(1007, 1007, 999.93, '2023-10-07', 'Debit Card'),
(1008, 1008, 149.92, '2023-10-08', 'PayPal'),
(1009, 1009, 119.91, '2023-10-09', 'Bank Transfer'),
(1010, 1010, 99.90, '2023-10-10', 'Cash'),
(1011, 1011, 999.89, '2023-10-11', 'Credit Card'),
(1012, 1012, 999.88, '2023-10-12', 'Debit Card'),
(1013, 1013, 149.87, '2023-10-13', 'PayPal'),
(1014, 1014, 119.86, '2023-10-14', 'Bank Transfer'),
(1015, 1015, 99.85, '2023-10-15', 'Cash'),
(1016, 1016, 999.84, '2023-10-16', 'Credit Card'),
(1017, 1017, 999.83, '2023-10-17', 'Debit Card'),
(1018, 1018, 149.82, '2023-10-18', 'PayPal'),
(1019, 1019, 119.81, '2023-10-19', 'Bank Transfer'),
(1020, 1020, 99.80, '2023-10-20', 'Cash'),
(1021, 1021, 999.79, '2023-10-21', 'Credit Card'),
(1022, 1022, 999.78, '2023-10-22', 'Debit Card'),
(1023, 1023, 149.77, '2023-10-23', 'PayPal'),
(1024, 1024, 119.76, '2023-10-24', 'Bank Transfer'),
(1025, 1025, 99.75, '2023-10-25', 'Cash'),
(1026, 1026, 999.74, '2023-10-26', 'Credit Card'),
(1027, 1027, 999.73, '2023-10-27', 'Debit Card'),
(1028, 1028, 149.72, '2023-10-28', 'PayPal'),
(1029, 1029, 119.71, '2023-10-29', 'Bank Transfer'),
(1030, 1030, 99.70, '2023-10-30', 'Cash'),
(1031, 1031, 999.69, '2023-10-31', 'Credit Card'),
(1032, 1032, 999.68, '2023-11-01', 'Debit Card'),
(1033, 1033, 149.67, '2023-11-02', 'PayPal'),
(1034, 1034, 119.66, '2023-11-03', 'Bank Transfer'),
(1035, 1035, 99.65, '2023-11-04', 'Cash'),
(1036, 1036, 999.64, '2023-11-05', 'Credit Card'),
(1037, 1037, 999.63, '2023-11-06', 'Debit Card'),
(1038, 1038, 149.62, '2023-11-07', 'PayPal'),
(1039, 1039, 119.61, '2023-11-08', 'Bank Transfer'),
(1040, 1040, 99.60, '2023-11-09', 'Cash'),
(1041, 1041, 999.59, '2023-11-10', 'Credit Card'),
(1042, 1042, 999.58, '2023-11-11', 'Debit Card'),
(1043, 1043, 149.57, '2023-11-12', 'PayPal'),
(1044, 1044, 119.56, '2023-11-13', 'Bank Transfer'),
(1045, 1045, 99.55, '2023-11-14', 'Cash'),
(1046, 1046, 999.54, '2023-11-15', 'Credit Card'),
(1047, 1047, 999.53, '2023-11-16', 'Debit Card'),
(1048, 1048, 149.52, '2023-11-17', 'PayPal'),
(1049, 1049, 119.51, '2023-11-18', 'Bank Transfer'),
(1050, 1050, 99.50, '2023-11-19', 'Cash');

SELECT * FROM Customer;

UPDATE Customer
SET Name = 'Chris Brown', Email = 'chris.brown@example.com', Address = '126 Cottage St'
WHERE CustomerID = 1005;

Select * From Customer;

UPDATE Customer
SET Name = 'Charlie Brown', Email = 'charlie.brown@example.com', Address = '202 Oak St'
WHERE CustomerID = 1005;
select * from customer;
START TRANSACTION;
SAVEPOINT my_savepoint;
DELETE FROM OrderDetail WHERE OrderDetailID=1001;
SELECT * FROM OrderDetail;
ROLLBACK TO my_savepoint;
SELECT * FROM OrderDetail;
COMMIT;
CREATE VIEW OrderDetailsView AS
SELECT
    od.OrderDetailID,
    od.OrderID,
    o.Date AS OrderDate,
    c.Name AS CustomerName,
    p.Name AS ProductName,
    od.Quantity,
    o.Status AS OrderStatus
FROM
    OrderDetail od
JOIN Ord o ON od.OrderID = o.OrderID
JOIN Customer c ON o.CustomerID = c.CustomerID
JOIN Product p ON od.ProductID = p.ProductID;
SELECT * FROM OrderDetailsView;


SELECT p.* 
FROM Product p 
JOIN Category c ON p.CategoryID = c.CategoryID 
WHERE c.CategoryName = 'Electronics';

SELECT o.* 
FROM Ord o 
JOIN Customer c ON o.CustomerID = c.CustomerID 
WHERE c.Name = 'John Doe';
SELECT s.SellerID, s.Name, s.ContactInfo, s.StoreName, COUNT(p.ProductID) AS TotalProducts
FROM Seller s
LEFT JOIN Product p ON s.SellerID = p.SellerID
GROUP BY s.SellerID, s.Name, s.ContactInfo, s.StoreName;

SELECT * FROM Review 
WHERE Rating = 5;

SELECT o.OrderID, SUM(p.Price * od.Quantity) AS TotalAmount 
FROM Ord o 
JOIN OrderDetail od ON o.OrderID = od.OrderID 
JOIN Product p ON od.ProductID = p.ProductID 
GROUP BY o.OrderID;

SELECT * FROM Shipment 
WHERE DeliveryStatus = 'Delivered';

SELECT * FROM Inquiry 
WHERE Status = 'Pending';




