create database CarConnect

-- Create Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255),
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(255),
    RegistrationDate DATE
);

-- Create Vehicle Table
CREATE TABLE Vehicle (
    VehicleID INT PRIMARY KEY,
    Model VARCHAR(50),
    Make VARCHAR(50),
    Year INT,
    Color VARCHAR(50),
    RegistrationNumber VARCHAR(20) UNIQUE,
    Availability TINYINT, -- Use TINYINT instead of BOOLEAN
    DailyRate DECIMAL(10, 2)
);


-- Create Reservation Table
CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY,
    CustomerID INT,
    VehicleID INT,
    StartDate DATETIME,
    EndDate DATETIME,
    TotalCost DECIMAL(10, 2),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);

-- Create Admin Table
CREATE TABLE Admin (
    AdminID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(255),
    Role VARCHAR(20),
    JoinDate DATE
);

-- Insert 10 records into Customer Table
INSERT INTO Customer VALUES
(1, 'Aarav', 'Gupta', 'aarav.g@gmail.com', '9876543210', '123 Main St, City', 'aaravgupta', 'hashed_password_1', '2023-01-01'),
(2, 'Aanya', 'Sharma', 'aanya.s@gmail.com', '8765432109', '456 Oak St, City', 'aanyasharma', 'hashed_password_2', '2023-01-02'),
(3, 'Aaradhya', 'Singh', 'aaradhya.s@gmail.com', '7654321098', '789 Maple St, City', 'aaradhyasingh', 'hashed_password_3', '2023-01-03'),
(4, 'Aryan', 'Verma', 'aryan.v@gmail.com', '6543210987', '101 Pine St, City', 'aryanverma', 'hashed_password_4', '2023-01-04'),
(5, 'Advait', 'Patel', 'advait.p@gmail.com', '5432109876', '202 Cedar St, City', 'advaitpatel', 'hashed_password_5', '2023-01-05'),
(6, 'Anvi', 'Reddy', 'anvi.r@gmail.com', '4321098765', '303 Elm St, City', 'anvireddy', 'hashed_password_6', '2023-01-06'),
(7, 'Vihaan', 'Kumar', 'vihaan.k@gmail.com', '3210987654', '404 Birch St, City', 'vihaankumar', 'hashed_password_7', '2023-01-07'),
(8, 'Zara', 'Saxena', 'zara.s@gmail.com', '2109876543', '505 Walnut St, City', 'zarasaxena', 'hashed_password_8', '2023-01-08'),
(9, 'Reyansh', 'Nair', 'reyansh.n@gmail.com', '1098765432', '606 Spruce St, City', 'reyanshnair', 'hashed_password_9', '2023-01-09'),
(10, 'Kyra', 'Joshi', 'kyra.j@gmail.com', '9876543210', '707 Fir St, City', 'kyrajoshi', 'hashed_password_10', '2023-01-10');

-- Insert 10 records into Vehicle Table
INSERT INTO Vehicle VALUES
(1, 'Sedan', 'Toyota', 2022, 'Blue', 'KA01AB1234', 1, 50.00),
(2, 'SUV', 'Ford', 2021, 'Black', 'MH02CD5678', 1, 70.00),
(3, 'Hatchback', 'Honda', 2023, 'Red', 'DL03EF9012', 1, 40.00),
(4, 'Sedan', 'Hyundai', 2022, 'White', 'KA04GH3456', 1, 55.00),
(5, 'SUV', 'Volkswagen', 2021, 'Silver', 'TN05IJ7890', 1, 75.00),
(6, 'Hatchback', 'Maruti', 2023, 'Green', 'UP06KL1234', 1, 45.00),
(7, 'Sedan', 'Nissan', 2022, 'Gray', 'KA07MN5678', 1, 60.00),
(8, 'SUV', 'Chevrolet', 2021, 'Yellow', 'MH08OP9012', 1, 80.00),
(9, 'Hatchback', 'Tata', 2023, 'Brown', 'DL09QR3456', 1, 50.00),
(10, 'Sedan', 'Kia', 2022, 'Orange', 'KA10ST7890', 1, 65.00);


-- Insert 10 records into Reservation Table
INSERT INTO Reservation VALUES
(1, 1, 1, '2023-02-01 10:00:00', '2023-02-03 15:00:00', 120.00, 'confirmed'),
(2, 2, 3, '2023-02-05 12:00:00', '2023-02-07 14:00:00', 90.00, 'pending'),
(3, 3, 5, '2023-02-10 09:00:00', '2023-02-12 18:00:00', 150.00, 'completed'),
(4, 4, 7, '2023-02-15 08:00:00', '2023-02-18 16:00:00', 180.00, 'confirmed'),
(5, 5, 9, '2023-02-20 11:00:00', '2023-02-22 13:00:00', 100.00, 'pending'),
(6, 6, 2, '2023-02-25 14:00:00', '2023-02-28 17:00:00', 210.00, 'confirmed'),
(7, 7, 4, '2023-03-01 16:00:00', '2023-03-03 20:00:00', 160.00, 'pending'),
(8, 8, 6, '2023-03-05 18:00:00', '2023-03-07 22:00:00', 120.00, 'completed'),
(9, 9, 8, '2023-03-10 20:00:00', '2023-03-12 12:00:00', 200.00, 'confirmed'),
(10, 10, 10, '2023-03-15 22:00:00', '2023-03-18 10:00:00', 130.00, 'pending');

-- Insert 10 records into Admin Table
INSERT INTO Admin VALUES
(1, 'Rahul', 'Sharma', 'rahul.s@admin.com', '9876543210', 'rahuladmin', 'hashed_admin_password_1', 'super admin', '2023-01-01'),
(2, 'Neha', 'Patil', 'neha.p@admin.com', '8765432109', 'nehaadmin', 'hashed_admin_password_2', 'fleet manager', '2023-01-02'),
(3, 'Suresh', 'Kumar', 'suresh.k@admin.com', '7654321098', 'sureshadmin', 'hashed_admin_password_3', 'super admin', '2023-01-03'),
(4, 'Ananya', 'Singh', 'ananya.s@admin.com', '6543210987', 'ananyaadmin', 'hashed_admin_password_4', 'fleet manager', '2023-01-04'),
(5, 'Vikas', 'Gupta', 'vikas.g@admin.com', '5432109876', 'vikasadmin', 'hashed_admin_password_5', 'super admin', '2023-01-05'),
(6, 'Pooja', 'Reddy', 'pooja.r@admin.com', '4321098765', 'poojaadmin', 'hashed_admin_password_6', 'fleet manager', '2023-01-06'),
(7, 'Rajesh', 'Saxena', 'rajesh.s@admin.com', '3210987654', 'rajeshadmin', 'hashed_admin_password_7', 'super admin', '2023-01-07'),
(8, 'Nisha', 'Nair', 'nisha.n@admin.com', '2109876543', 'nishaadmin', 'hashed_admin_password_8', 'fleet manager', '2023-01-08'),
(9, 'Deepak', 'Joshi', 'deepak.j@admin.com', '1098765432', 'deepakadmin', 'hashed_admin_password_9', 'super admin', '2023-01-09'),
(10, 'Ritu', 'Kumar', 'ritu.k@admin.com', '9876543210', 'rituadmin', 'hashed_admin_password_10', 'fleet manager', '2023-01-10');


--Create GetCustomerByID Procedure
Create Proc GetCustomerByID
@C_ID INT
AS
BEGIN
SELECT * FROM Customers
WHERE CustomerID=@C_ID
END

--Create GetCustomerByUsername Procedure
Create Proc GetCustomerByUsername
@C_UserName VARCHAR(50)
AS
BEGIN
SELECT * FROM Customers
WHERE Username=@C_UserName
END

--Create RegisterCustomer Procedure
Create Proc RegisterCustomer
@C_ID INT,
@C_FirstName VARCHAR(50),
@C_LastName VARCHAR(50),
@C_Email VARCHAR(50),
@C_Phone VARCHAR(50),
@C_Address VARCHAR(255),
@C_Username VARCHAR(50),
@C_Password VARCHAR(50),
@C_RegisterDate DATE
AS
BEGIN
INSERT INTO Customers VALUES(@C_ID,@C_FirstName,@C_LastName,@C_Email,@C_Phone,@C_Address,@C_Username,@C_Password,@C_RegisterDate)
END

--Create DeleteCustomer Procedure

Create Proc DeleteCustomer
@C_ID INT
AS
BEGIN
DELETE FROM Customers WHERE CustomerID=@C_ID
END

--Create UpdateCustomer Procedure

Create Proc UpdateCustomer
@C_ID INT,
@C_Username VARCHAR(50)
AS 
BEGIN
UPDATE Customers SET Username=@C_Username WHERE CustomerID=@C_ID
END

--Create GetVehicleById Procedure
Create Proc GetVehicleByID
@V_ID INT
AS
BEGIN
SELECT * FROM Vehicle
WHERE VehicleID=@V_ID
END

--Create  GetAvailableVehicles Procedure

Create Proc GetAvailableVehicles
AS
BEGIN
SELECT * FROM Vehicle 
WHERE Availability=1
END

--Create AddVehicle Procedure

Create Proc AddVehicle
@V_ID INT,
@V_Model VARCHAR(50),
@V_Make VARCHAR(50),
@V_Year INT,
@V_Color VARCHAR(50),
@V_RegistrationNumber VARCHAR(255),
@V_Availability BIT,
@V_DailyRate FLOAT
AS
BEGIN
INSERT INTO Vehicle VALUES(@V_ID,@V_Model,@V_Make,@V_Year,@V_Color,@V_RegistrationNumber,@V_Availability,@V_DailyRate)
END

--Create RemoveVehicle Procedure

Create Proc RemoveVehicle
@V_ID INT
AS
BEGIN
DELETE FROM Vehcile WHERE VehicleID=@V_ID
END

--Create GetReservationById Procedure

Create Proc GetReservationByID
@R_ID INT
AS
BEGIN
SELECT * FROM Reservation
WHERE ReservationID=@R_ID
END

--Create GetReservationsByCustomerId Procedure

Create Proc GetReservationsByCustomerId
@C_ID INT
AS
BEGIN
SELECT * FROM Reservation
WHERE  CustomerID=@C_ID
END

--Create CreateReservation Procedure

Create Proc CreateReservation
@R_ID INT,
@C_ID INT,
@V_ID INT,
@R_StartDate DATE,
@R_EndDate DATE,
@R_TotalCost FLOAT,
@R_Status VARCHAR(50)
AS
BEGIN
INSERT INTO Reservation VALUES(@R_ID,@C_ID,@V_ID,@R_StartDate,@R_EndDate,@R_TotalCost,@R_Status)
END

--Calculate TotalCost

UPDATE Reservation
SET TotalCost=(SELECT DailyRate FROM Vehicle WHERE Reservation.VehicleID=Vehicle.VehicleID)
