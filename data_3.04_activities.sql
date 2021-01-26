/*
3.04 Activity 2
Refer to the files_for_activities/normalization_and_functional_dependencies.md file.
Create a data model that solves the problem with functional dependencies between Pharmacy, Prescription and Medicine.

*PharmacyID PharmacyName Address Phone

PharmacyID *PrescriptionID MedicineID Quantity LastPickupDate RefillFrequency

*MedicineID MedicineName Description

3.04 Activity 3
Table ‘Movie’: *MovieID MovieTitle
Table ‘Show’: *ShowID ShowDay ShowTime 
Table ‘Customer’: *CustomerID CustomerName 
Table ‘Order’: *ShowID, *CustomerID, MovieID, TicketNo, BuyDate
-
Table ‘Movie’: *MovieID MovieTitle
Table ‘Show’: *ShowID ShowDay ShowTime MovieID
Table ‘Ticket’: *TicketNo *ShowID CustomerID BuyDate
Table ‘Customer’: *CustomerID CustomerName 
*/
/*
3.04 Activity 4
Top 10 loans vs. top 10% loans in the loan table from the bank database .
*/
Use bank;
SELECT amount
FROM loan
ORDER BY amount DESC
LIMIT 10;

SELECT loan_id, amount
FROM loan
WHERE amount > (SELECT min(amount) + (max(amount)-min(amount))*0.9 from loan)
ORDER BY amount DESC;
