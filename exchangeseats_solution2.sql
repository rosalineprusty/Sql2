SELECT (
    CASE
    WHEN MOD(ID,2)!=0 AND ID != CNT THEN ID + 1
    WHEN MOD(ID,2)!=0 AND ID = CNT THEN ID
    ELSE ID-1
   END
 ) AS 'ID', STUDENT FROM SEAT, (SELECT COUNT(*) AS CNT FROM SEAT) AS SEAT_COUNT ORDER BY ID;