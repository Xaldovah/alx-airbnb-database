-- Query Performance Measurement Before Adding Indexes
-- Measure performance for finding bookings for a specific user
EXPLAIN ANALYZE
SELECT * 
FROM Booking
WHERE user_id = '00000000-0000-0000-0000-000000000001';

-- Measure performance for finding properties in a specific location
EXPLAIN ANALYZE
SELECT * 
FROM Property
WHERE location = 'California, USA';

-- Measure performance for finding bookings within a date range
EXPLAIN ANALYZE
SELECT * 
FROM Booking
WHERE start_date BETWEEN '2024-12-01' AND '2024-12-31';

-- Create Indexes
-- Indexes for User Table
CREATE INDEX idx_user_email ON User (email);
CREATE INDEX idx_user_id ON User (user_id);

-- Indexes for Booking Table
CREATE INDEX idx_booking_user_id ON Booking (user_id);
CREATE INDEX idx_booking_property_id ON Booking (property_id);
CREATE INDEX idx_booking_start_date ON Booking (start_date);

-- Indexes for Property Table
CREATE INDEX idx_property_id ON Property (property_id);
CREATE INDEX idx_property_location ON Property (location);

-- Query Performance Measurement After Adding Indexes
-- Measure performance for finding bookings for a specific user
EXPLAIN ANALYZE
SELECT * 
FROM Booking
WHERE user_id = '00000000-0000-0000-0000-000000000001';

-- Measure performance for finding properties in a specific location
EXPLAIN ANALYZE
SELECT * 
FROM Property
WHERE location = 'California, USA';

-- Measure performance for finding bookings within a date range
EXPLAIN ANALYZE
SELECT * 
FROM Booking
WHERE start_date BETWEEN '2024-12-01' AND '2024-12-31';

