USE C21_DB1;


-- Create Accounts Table
CREATE TABLE Accounts 
(
    AccountID INT PRIMARY KEY,
    Balance DECIMAL(10, 2)
);


-- Create Transactions Table
CREATE TABLE Transactions 
(
    TransactionID INT PRIMARY KEY IDENTITY(1,1),
    FromAccount INT,
    ToAccount INT,
    Amount DECIMAL(10, 2),
    Date DATETIME
);


-- Insert Sample Data into Accounts
INSERT INTO Accounts (AccountID, Balance) VALUES (1, 500.00); -- Account 1
INSERT INTO Accounts (AccountID, Balance) VALUES (2, 300.00); -- Account 2






--  ********************   Transactions    ********************



BEGIN TRANSACTION;

	BEGIN TRY
	
		UPDATE Accounts SET Balance = Balance - 100		WHERE	AccountID = 1;

		UPDATE Accounts SET Balance = Balance + 100		WHERE	AccountID = 2;

		INSERT INTO Transactions(FromAccount, ToAccount, Amount, Date) VALUES (1, 2, 100, GETDATE());
		
		COMMIT

	END TRY

	BEGIN CATCH
		
			ROLLBACK;

	END CATCH







SELECT * FROM Accounts


SELECT * FROM Transactions

