DROP TABLE IF EXISTS candles;
DROP TABLE IF EXISTS scent;

CREATE TABLE candles
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(225),
    scent VARCHAR(225)
);

CREATE TABLE scent
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(225),
    amount DECIMAL(8,2)
);

INSERT INTO candles (name, scent) VALUES ('Do I Smell Pie', 'Apple Jack & Peel') RETURNING *;

INSERT INTO scent (name, amount) VALUES ('Apple Jack & Peel', '32') RETURNING *;
