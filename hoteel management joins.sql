-- Question 1: Retrieve a list of hotels along with their average rating from reviews.
select h.hotelid,h.hotelname ,avg(r.reviewid) as avaragerating from hotels H join hotelreviews R on h.hotelid=r.hotelid group by h.hotelid,h.hotelname;
SELECT H.HotelID, H.HotelName, AVG(R.Rating) AS AverageRating FROM Hotels H
JOIN HotelReviews R ON H.HotelID = R.HotelID
GROUP BY H.HotelID, H.HotelName;

-- Question 2: Show a list of hotels and the total number of reviews each hotel has received.
SELECT H.HotelID, H.HotelName, COUNT(R.ReviewID) AS TotalReviews
FROM Hotels H LEFT JOIN HotelReviews R ON H.HotelID = R.HotelID
GROUP BY H.HotelID, H.HotelName;

-- Question 1: Pairs of hotels in the same location
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.Location
FROM Hotels A JOIN Hotels B ON A.Location = B.Location AND A.HotelID < B.HotelID;

-- Question 2: Hotels with the same contact number
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.ContactNumber
FROM Hotels A JOIN Hotels B ON A.ContactNumber = B.ContactNumber AND A.HotelID < B.HotelID;

-- Question 3: Hotels with similar price per night
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.PricePerNight
FROM Hotels A JOIN Hotels B ON ABS(A.PricePerNight - B.PricePerNight) <= 50 AND A.HotelID < B.HotelID;

-- Question 4: Hotels with the same amenities and check-in time
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.Amenities, A.CheckInTime
FROM Hotels A JOIN Hotels B ON A.Amenities = B.Amenities AND A.CheckInTime = B.CheckInTime AND A.HotelID < B.HotelID;

-- Question 5: Retrieve pairs of hotels with the same rating.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.Rating
FROM Hotels A JOIN Hotels B ON A.Rating = B.Rating AND A.HotelID < B.HotelID;

-- Question 6: Find hotels with similar numbers of rooms.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.NumRooms
FROM Hotels A JOIN Hotels B ON ABS(A.NumRooms - B.NumRooms) <= 10 AND A.HotelID < B.HotelID;

-- Question 7: Identify hotels with the same check-out time.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.CheckOutTime
FROM Hotels A JOIN Hotels B ON A.CheckOutTime = B.CheckOutTime AND A.HotelID < B.HotelID;

-- Question 8: Retrieve pairs of hotels with the same contact number.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.ContactNumber
FROM Hotels A JOIN Hotels B ON A.ContactNumber = B.ContactNumber AND A.HotelID < B.HotelID;

-- Question 9: Find hotels with similar amenities.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.Amenities
FROM Hotels A JOIN Hotels B ON A.Amenities = B.Amenities AND A.HotelID < B.HotelID;

-- Question 10: Retrieve pairs of hotels with the same rating and review date.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.Rating, R.ReviewDate
FROM Hotels A
JOIN Hotels B ON A.Rating = B.Rating AND A.HotelID < B.HotelID
JOIN HotelReviews R ON A.HotelID = R.HotelID
WHERE B.HotelID = R.HotelID;

-- Question 11: Find hotels with the same rating and review rating.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.Rating, R.Rating AS ReviewRating
FROM Hotels A
JOIN Hotels B ON A.Rating = B.Rating AND A.HotelID < B.HotelID
JOIN HotelReviews R ON A.HotelID = R.HotelID;

-- Question 12: Retrieve hotels with similar price per night and review text.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.PricePerNight, R.ReviewText
FROM Hotels A
JOIN Hotels B ON ABS(A.PricePerNight - B.PricePerNight) <= 50 AND A.HotelID < B.HotelID
JOIN HotelReviews R ON A.HotelID = R.HotelID;

-- Question 13: Identify hotels with the same check-in time and review date.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.CheckInTime, R.ReviewDate
FROM Hotels A
JOIN Hotels B ON A.CheckInTime = B.CheckInTime AND A.HotelID < B.HotelID
JOIN HotelReviews R ON A.HotelID = R.HotelID;

-- Question 14: Find hotels with similar number of rooms and review rating.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.NumRooms, R.Rating AS ReviewRating
FROM Hotels A
JOIN Hotels B ON ABS(A.NumRooms - B.NumRooms) <= 10 AND A.HotelID < B.HotelID
JOIN HotelReviews R ON A.HotelID = R.HotelID;

-- Question 15: Retrieve pairs of hotels with the same location and review date.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.Location, R.ReviewDate
FROM Hotels A
JOIN Hotels B ON A.Location = B.Location AND A.HotelID < B.HotelID
JOIN HotelReviews R ON A.HotelID = R.HotelID;

-- Question 16: Find hotels with similar amenities and review text.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.Amenities, R.ReviewText
FROM Hotels A
JOIN Hotels B ON A.Amenities = B.Amenities AND A.HotelID < B.HotelID
JOIN HotelReviews R ON A.HotelID = R.HotelID;

-- Question 17: Retrieve pairs of hotels with the same location and contact number.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.Location, A.ContactNumber
FROM Hotels A
JOIN Hotels B ON A.Location = B.Location AND A.HotelID < B.HotelID
WHERE A.ContactNumber = B.ContactNumber;

-- Question 18: Identify hotels with the same rating and check-out time.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.Rating, A.CheckOutTime
FROM Hotels A
JOIN Hotels B ON A.Rating = B.Rating AND A.HotelID < B.HotelID
WHERE A.CheckOutTime = B.CheckOutTime;

-- Question 19: Find hotels with similar price per night and review rating.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.PricePerNight, R.Rating AS ReviewRating
FROM Hotels A
JOIN Hotels B ON ABS(A.PricePerNight - B.PricePerNight) <= 50 AND A.HotelID < B.HotelID
JOIN HotelReviews R ON A.HotelID = R.HotelID;


-- Question 20: Retrieve pairs of hotels with the same check-in time and review text.
SELECT A.HotelID AS Hotel1ID, A.HotelName AS Hotel1Name, B.HotelID AS Hotel2ID, B.HotelName AS Hotel2Name, A.CheckInTime, R.ReviewText
FROM Hotels A
JOIN Hotels B ON A.CheckInTime = B.CheckInTime AND A.HotelID < B.HotelID
JOIN HotelReviews R ON A.HotelID = R.HotelID;












