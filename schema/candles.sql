DROP TABLE IF EXISTS candles;
-- DROP TABLE IF EXISTS scent;

CREATE TABLE candles
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(225),
    scent VARCHAR(225),
    amount DECIMAL(8,2),
    num DECIMAL(8,2),
    UNIQUE(name)
);

-- CREATE TABLE mix
-- (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(225),
--     amount DECIMAL(8,2)
-- );

INSERT INTO candles (name, scent, amount, num) VALUES ('Do I Smell Pie', 'Apple Jack & Peel', 67.8, 6)RETURNING *;
INSERT INTO candles (name, scent, amount, num) VALUES ('Winter of "35"', 'dddd', 67.8, 6)RETURNING *;
INSERT INTO candles (name, scent, amount, num) VALUES ('rkjnr', 'lkjnc', 67.8, 6)RETURNING *;
INSERT INTO candles (name, scent, amount, num) VALUES ('jknc', 'kjn', 67.8, 6)RETURNING *;

-- INSERT INTO scent (name, amount) VALUES ('Apple Jack & Peel', '32') RETURNING *;

-- STEP 1: RUN COMMAND "psql".
-- STEP 2: RUN COMMAND "CREATE DATABASE rebottle;"
-- STEP 3: RUN COMMAND "\q"
-- STEP 4: RUN COMMAND "psql -f schema/candles.sql -d rebottle;"