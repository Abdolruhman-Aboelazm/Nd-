USE new_app;
CREATE Table Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    PublishedYear INT,
    Genre VARCHAR(100),
);
CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    phoneNumber VARCHAR(15) UNIQUE NOT NULL,
);
CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);
