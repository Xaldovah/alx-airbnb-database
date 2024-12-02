# Optimization Report

## Objective
Optimize a complex query that retrieves all bookings with user, property, and payment details to reduce execution time and improve performance.

---

## Initial Query
### Query
```sql
SELECT
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email,
    Property.property_id,
    Property.name AS property_name,
    Property.location,
    Property.pricepernight,
    Payment.payment_id,
    Payment.amount,
    Payment.payment_method,
    Payment.payment_date
FROM
    Booking
JOIN
    User
ON
    Booking.user_id = User.user_id
JOIN
    Property
ON
    Booking.property_id = Property.property_id
LEFT JOIN
    Payment
ON
    Booking.booking_id = Payment.booking_id;

