-- Top Active Accounts
SELECT
    user_id,
    COUNT(*) AS total_actions
FROM clicks
GROUP BY user_id
ORDER BY total_actions DESC
LIMIT 20;

-- Spam Comment Detection
SELECT
    user_id,
    comment_text,
    COUNT(*) AS frequency
FROM comments
GROUP BY user_id, comment_text
HAVING COUNT(*) > 20
ORDER BY frequency DESC;

-- Product Vulnerability
SELECT
    u.user_id,
    COUNT(*) AS actions_first_day
FROM users u
JOIN clicks c
ON u.user_id = c.user_id
WHERE c.created_at <= u.account_created + INTERVAL '24 hours'
GROUP BY u.user_id
ORDER BY actions_first_day DESC;