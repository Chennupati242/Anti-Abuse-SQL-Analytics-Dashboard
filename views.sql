CREATE OR REPLACE VIEW network_badness_over_time AS
WITH daily_stats AS (
    SELECT
        DATE(created_at) AS day,
        COUNT(*) AS total_actions,
        COUNT(*) FILTER (WHERE user_id <= 200) AS bot_actions
    FROM clicks
    GROUP BY DATE(created_at)
)
SELECT
    day,
    total_actions,
    bot_actions,
    ROUND(
        bot_actions::numeric /
        NULLIF(total_actions,0) * 100,
        2
    ) AS bot_percentage
FROM daily_stats;

CREATE OR REPLACE VIEW vulnerability_exploitation AS
SELECT
    u.user_id,
    COUNT(*) AS actions_first_day
FROM users u
JOIN clicks c
ON u.user_id = c.user_id
WHERE c.created_at <=
      u.account_created + INTERVAL '24 hours'
GROUP BY u.user_id;