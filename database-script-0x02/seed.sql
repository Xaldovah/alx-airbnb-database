-- Seed Script for AirBnB Database

-- Insert sample data into User table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('00000000-0000-0000-0000-000000000001', 'John', 'Doe', 'john.doe@example.com', 'hashedpassword1', '1234567890', 'guest', CURRENT_TIMESTAMP),
('00000000-0000-0000-0000-000000000002', 'Alice', 'Smith', 'alice.smith@example.com', 'hashedpassword2', '2345678901', 'host', CURRENT_TIMESTAMP),
('00000000-0000-0000-0000-000000000003', 'Bob', 'Brown', 'bob.brown@example.com', 'hashedpassword3', '3456789012', 'admin', CURRENT_TIMESTAMP);

-- Insert sample data into Property table
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Ocean View Apartment', 'A beautiful apartment with a view of the ocean.', 'California, USA', 150.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', 'Cozy Cabin', 'A small cozy cabin in the woods.', 'Colorado, USA', 75.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert sample data into Booking table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, status, created_at)
VALUES
('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '2024-12-10', '2024-12-15', 'confirmed', CURRENT_TIMESTAMP),
('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', '2024-12-20', '2024-12-22', 'pending', CURRENT_TIMESTAMP);

-- Insert sample data into Payment table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 750.00, CURRENT_TIMESTAMP, 'credit_card'),
('30000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000002', 150.00, CURRENT_TIMESTAMP, 'paypal');

-- Insert sample data into Review table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('40000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 5, 'Amazing experience! Highly recommend.', CURRENT_TIMESTAMP),
('40000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 4, 'Very cozy and nice place to stay.', CURRENT_TIMESTAMP);

-- Insert sample data into Message table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('50000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Is the property available for December?', CURRENT_TIMESTAMP),
('50000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Yes, it is available!', CURRENT_TIMESTAMP);
