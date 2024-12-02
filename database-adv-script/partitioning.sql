-- Step 1: Create a new partitioned Booking table
CREATE TABLE Booking_Partitioned (
    booking_id UUID NOT NULL,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (booking_id, start_date)
) PARTITION BY RANGE (start_date);

-- Step 2: Define partitions for specific date ranges
CREATE TABLE Booking_2023 PARTITION OF Booking_Partitioned
FOR VALUES FROM ('2023-01-01') TO ('2023-12-31');

CREATE TABLE Booking_2024 PARTITION OF Booking_Partitioned
FOR VALUES FROM ('2024-01-01') TO ('2024-12-31');

CREATE TABLE Booking_2025 PARTITION OF Booking_Partitioned
FOR VALUES FROM ('2025-01-01') TO ('2025-12-31');

-- Step 3: Insert data from the original Booking table into the new partitioned table
INSERT INTO Booking_Partitioned
SELECT * FROM Booking;

-- Step 4: Test the performance on the partitioned table (example query)
EXPLAIN ANALYZE
SELECT *
FROM Booking_Partitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-06-30';
