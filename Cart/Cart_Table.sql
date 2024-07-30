--Creating Cart Table in BookStore_DB

CREATE TABLE Cart
(
CartId BIGINT IDENTITY(1,1) PRIMARY KEY,
Quantity INT DEFAULT 1,
BookId INT,
UserId INT,
CONSTRAINT FK_Books FOREIGN KEY (BookId) REFERENCES Books(BookId),
CONSTRAINT FK_SignUp FOREIGN KEY (UserId) REFERENCES SignUp(UserId)
);

