# Database Performance Monitoring and Refinement

## Objective
Continuously monitor and refine database performance by analyzing query execution plans and implementing schema adjustments.

---

## Frequently Used Queries

### Query 1: Fetch Bookings for a Specific User
```sql
SELECT *
FROM Booking
WHERE user_id = '00000000-0000-0000-0000-000000000001';
