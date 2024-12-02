# Database Normalization

## Objective
Ensure the database schema adheres to the Third Normal Form (3NF) by eliminating redundancy and ensuring data integrity.

---

## Steps to Normalize

### First Normal Form (1NF)
- Each attribute contains atomic values.
- No repeating groups or arrays in any table.
- All tables have a primary key.

### Second Normal Form (2NF)
- Ensured that all non-prime attributes are fully dependent on the entire primary key.
- Example: In the `Booking` table, no partial dependency exists because each attribute depends entirely on `booking_id`.

### Third Normal Form (3NF)
- Removed transitive dependencies:
  - In the `Booking` table, `total_price` was a derived attribute. It was removed to prevent redundancy and to ensure adherence to 3NF.

---

## Final Schema
- The normalized schema eliminates all redundancy and adheres to 3NF.
- Derived data (e.g., `total_price`) is computed dynamically when needed instead of being stored.

---

## Changes Made
1. Removed `total_price` from the `Booking` table.
2. Updated the schema to ensure all attributes depend solely on the primary key of their respective tables.

## Conclusion
The database design now adheres to 3NF, ensuring data integrity, reducing redundancy, and optimizing storage.

