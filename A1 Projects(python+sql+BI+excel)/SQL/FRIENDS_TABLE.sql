USE DataPracticeDB;
CREATE TABLE Friends (
  ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Age INT,
  City VARCHAR(50)
);
INSERT INTO
  Friends (ID, Name, Age, City)
VALUES
  (1, 'Rohit', 26, 'Delhi'),
  (2, 'Simran', 23, 'Mumbai'),
  (3, 'Arjun', 28, 'Bangalore');
SELECT
  *
FROM
  Friends;
  
  SELECT 
  *
  FROM 
  Friends
  WHERE 
  City = 'Mumbai';
  SELECT * FROM Friends
  ORDER BY Age ASC;