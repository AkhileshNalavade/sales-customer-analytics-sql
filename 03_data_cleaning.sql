UPDATE OrderItems
SET quantity = 1
WHERE quantity IS NULL;

ALTER TABLE OrderItems
ALTER COLUMN quantity INT NOT NULL;