-- Optimized query to retrieve all bookings with user, property, and payment details
SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    p.pricepernight,
    pay.payment_id,
    pay.amount,
    pay.payment_method,
    pay.payment_date
FROM
    Booking b
INNER JOIN
    User u
ON
    b.user_id = u.user_id
INNER JOIN
    Property p
ON
    b.property_id = p.property_id
LEFT JOIN
    Payment pay
ON
    b.booking_id = pay.booking_id
WHERE
    b.status = 'confirmed';
