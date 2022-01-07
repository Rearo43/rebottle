DROP TABLE IF EXISTS rebottle:

CREATE TABLE candles
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(225),
    UNIQUE (name)
);