-- Total number of bookings made by each user
SELECT
    User.user_id,
    User.first_name,
    User.last_name,
    COUNT(Booking.booking_id) AS total_bookings
FROM
    User
LEFT JOIN
    Booking
ON
    User.user_id = Booking.user_id
GROUP BY
    User.user_id, User.first_name, User.last_name
ORDER BY
    total_bookings DESC;

-- Rank properties based on the total number of bookings
SELECT
    Property.property_id,
    Property.name AS property_name,
    COUNT(Booking.booking_id) AS total_bookings,
    RANK() OVER (
        ORDER BY COUNT(Booking.booking_id) DESC
    ) AS rank
FROM
    Property
LEFT JOIN
    Booking
ON
    Property.property_id = Booking.property_id
GROUP BY
    Property.property_id, Property.name
ORDER BY
    rank;
