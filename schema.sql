CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    account_created TIMESTAMP,
    country TEXT,
    device_id TEXT,
    is_bot BOOLEAN
);

CREATE TABLE videos (
    video_id INTEGER PRIMARY KEY,
    uploader_id INTEGER,
    upload_time TIMESTAMP,
    category TEXT
);

CREATE TABLE comments (
    comment_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    video_id INTEGER,
    comment_text TEXT,
    created_at TIMESTAMP
);

CREATE TABLE clicks (
    click_id BIGINT PRIMARY KEY,
    user_id INTEGER,
    video_id INTEGER,
    action_type TEXT,
    created_at TIMESTAMP
);