SELECT id, num 
FROM 
( SELECT friend as id, COUNT(friend) as num FROM (
SELECT requester_id as friend FROM RequestAccepted
UNION ALL
SELECT accepter_id as friend FROM RequestAccepted) friends
GROUP BY friend) counts
ORDER BY num DESC
LIMIT 1