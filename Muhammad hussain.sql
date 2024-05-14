CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255)
);
CREATE TABLE Accounts (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(50),
    Balance DECIMAL(15, 2),
    OpenDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
CREATE TABLE Cards (
    CardID INT AUTO_INCREMENT PRIMARY KEY,
    AccountID INT,
    CardType VARCHAR(50),
    ExpiryDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);
