-- PORJECT:
-- BANK MANAGEMENT SYSTEM
-- GROUP MEMBERS: 
-- 1. Muhammad Hussain (BSE-23F-059)
-- 2. Muhammad Taimoor (BSE-23F-086)
-- 3. Sohaib Raheem (BSE-23F-075)
 
CREATE DATABASE BANK_MANAGEMENT_SYSTEM;
USE BANK_MANAGEMENT_SYSTEM;

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Position VARCHAR(100),
    Salary DECIMAL(15, 2),
    BranchID INT,
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Branches (
    BranchID INT AUTO_INCREMENT PRIMARY KEY,
    Location VARCHAR(255),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Salaries (
    SalaryID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT,
    Amount DECIMAL(15, 2),
    PaymentDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
