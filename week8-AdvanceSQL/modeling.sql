-- Creates an Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Create the EmployeeSalaryHistory Table
CREATE TABLE EmployeeSalaryHistory (
    SalaryID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT,
    Salary DECIMAL(10,2),
    ValidFrom DATE,
    ValidTo DATE,
    TransactionStart TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TransactionEnd TIMESTAMP NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- insertion
-- Employees
INSERT INTO Employee (EmployeeID, FirstName, LastName, Department)
VALUES 
(1, 'Alice', 'Wambui', 'HR'),
(2, 'Brian', 'Otieno', 'IT'),
(3, 'Cynthia', 'Kariuki', 'Finance');

-- EmployeeSalaryHistory
INSERT INTO EmployeeSalaryHistory (EmployeeID, Salary, ValidFrom, ValidTo, TransactionEnd)
VALUES 
-- Alice
(1, 50000.00, '2022-01-01', '2022-12-31', '2022-12-31 23:59:59'),
(1, 55000.00, '2023-01-01', NULL, NULL),

-- Brian
(2, 60000.00, '2021-06-01', '2023-05-31', '2023-05-31 23:59:59'),
(2, 65000.00, '2023-06-01', NULL, NULL),

-- Cynthia
(3, 70000.00, '2022-03-01', NULL, NULL);

