CREATE TABLE Registration (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Email VARCHAR(255) UNIQUE NOT NULL,
  DateOfBirth DATE NOT NULL,
  Password VARCHAR(255) NOT NULL  -- Assuming hashed password storage
);

INSERT INTO Registration (Name, Email, DateOfBirth, Password)
VALUES ("Puneeth", "puneethbabu497@gmail.com", "2000-08-05", "hashed_password");

-- Get all users
SELECT * FROM Registration;

-- Get user by ID
SELECT * FROM Registration WHERE ID = 1;

-- Get users by email (assuming email is unique)
SELECT * FROM Registration WHERE Email = "puneethrossi46@gmail.com";

UPDATE Registration
SET Name = "Jane Doe Updated", Email = "jane.doe.updated@example.com"
WHERE ID = 2;

DELETE FROM Registration WHERE ID = 3;
