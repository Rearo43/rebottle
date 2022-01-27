-- DROP TABLE IF EXISTS candles;
-- DROP TABLE IF EXISTS scents;

-- CREATE TABLE candles
-- (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(225),
--     scent VARCHAR(225),
--     amount DECIMAL(8,2),
--     num NUMERIC,
--     UNIQUE(name)
-- );

-- CREATE TABLE scents
-- (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(225),
--     association VARCHAR(225)
-- );

CREATE TABLE labels
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(225),
    labels NUMERIC,
    UNIQUE(name)
);

-- INSERT INTO candles (name, scent, amount, num) VALUES ('Cant Catch Me', 'Gingerbread', 16.2, 7);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('Bridle Trails', 'Fir Needle (Z)', 0, 5);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('Hot Toddy', 'Mix(HT)', 0, 7);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('Winter of 35', 'Winter Wonderland Slatkin', 0, 0);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('SEA', 'Snowberry', 33.8, 1);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('HAWK', 'Cedar Amber', 9.5, 1);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('Lost on Lopez', 'Month Earth', 0, 10);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('Sticks & Stories', 'ampfire', 0, 15);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('The Usual Forecast', 'Rain', 5.8, 0);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('Not Just for New Years', 'A Thousand Wishes BBW', 9.1, 11);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('Do I Smell Pie', 'Apple Jack & Peel', 57, 1);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('2018 D2', 'Mix(18D)', 0, 7);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('2019 D2', 'Mix(19D)', 0, 7);
-- INSERT INTO candles (name, scent, amount, num) VALUES ('Chaleur Blanc', 'Mix(CB)', 0, 7) RETURNING *;



-- INSERT INTO scents (name, association) VALUES ('A Thousand Wishes BBW', 'Not Just for New Years');
-- INSERT INTO scents (name, association) VALUES ('African Rain', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Amalfi Coast', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Apple & Oak', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Apple Jack & Peel', 'Do I Smell Pie?');
-- INSERT INTO scents (name, association) VALUES ('Aquolina Pink Sugar Woman ', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Arabian Wood Tom Ford', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Artisan- Bark & Spice', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Artisan- Bark & Spice', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Awapuhi Seaberry', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Bayberry', '??');
-- INSERT INTO scents (name, association) VALUES ('Bird Of Paradise', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Black Coconut Yankee', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Butt Naked', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Butter Rum', '3/3 Hot Toddy');
-- INSERT INTO scents (name, association) VALUES ('Campfire', 'Sticks & Stories');
-- INSERT INTO scents (name, association) VALUES ('Cedar & Saffron (Z)', '3/3 D2 18 ');
-- INSERT INTO scents (name, association) VALUES ('Cedar Amber', 'HAWK');
-- INSERT INTO scents (name, association) VALUES ('Chamomile', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Chocolate (Z)', '1/3 Hot Toddy');
-- INSERT INTO scents (name, association) VALUES ('Christmas Cookie', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Christmas Morning', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Clove Bud (Z)', '1/4 D2 19');
-- INSERT INTO scents (name, association) VALUES ('Coffee (Z)', '1/3 D2 18');
-- INSERT INTO scents (name, association) VALUES ('Country Spice', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Cranberry (Z)', '2/3 D2 18');
-- INSERT INTO scents (name, association) VALUES ('Cypress Essential Oil', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Dreams', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Feng Shui - Water', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Fierce', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Fierce', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Fig & Melon', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Fir Needle (Z)', 'Bridal Trails 2');
-- INSERT INTO scents (name, association) VALUES ('Forest Pine', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Forget- Me- Not', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Franch Vanilla (Z)', '3/4 D2 19');
-- INSERT INTO scents (name, association) VALUES ('Gingerbread', 'Cant Catch Me');
-- INSERT INTO scents (name, association) VALUES ('Glistening Snow', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Hibiscus & White Amber', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Honeysuckle Rose', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Japanese Cherry Blossom BBW', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Jasmine Rose Petals', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Lavendar vanilla', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Lavender', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Lick Me All Over', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Mahogany Teakwood Slatkin', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Month Earth', 'Lost On Lopez');
-- INSERT INTO scents (name, association) VALUES ('Oakmoss', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Oakmoss Sandalwood', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Orange Sherbet (Z)', '4/4 D2 19');
-- INSERT INTO scents (name, association) VALUES ('Peaches N Cream', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Pear & Redwood', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Pink Sands Yankee', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Plum Blossom (Z)', '2/4 D2 19');
-- INSERT INTO scents (name, association) VALUES ('Polynesian Hibiscus', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Pumpkin Crunch Cake (GOT DARK)', 'My Friend "Jack"');
-- INSERT INTO scents (name, association) VALUES ('Rain', 'The Usual Forcast');
-- INSERT INTO scents (name, association) VALUES ('Raspberry', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Rose', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Sage & Citrus YC', '??');
-- INSERT INTO scents (name, association) VALUES ('Sex On The Beach', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Snowberry', 'SEA');
-- INSERT INTO scents (name, association) VALUES ('Spearmint (Z)', '2/3 Hot Toddy');
-- INSERT INTO scents (name, association) VALUES ('Sun & Sand Yankee', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Tea Leaf & Jasmine', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Thanksgiving White Barn', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Unforgivable by Sean John Men', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Vanilla Bean BWW', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Vanilla non darkening ', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Warm Sugar Vanilla', 'NA');
-- INSERT INTO scents (name, association) VALUES ('White Fir (Z)', 'Bridal Trails 1');
-- INSERT INTO scents (name, association) VALUES ('White Ginger & Amber', 'NA');
-- INSERT INTO scents (name, association) VALUES ('White Tea', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Wildberry Tulip BBW', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Winter Wonderland Slatkin', 'Winter of 35');
-- INSERT INTO scents (name, association) VALUES ('Crackling Firewood & Fir', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Hot Toddy', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Japanese Plum Voluspa', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Almond', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Harvest Spice', 'NA');
-- INSERT INTO scents (name, association) VALUES ('All Spice', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Citrus', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Clove', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Creme Brulee', 'NA');
-- INSERT INTO scents (name, association) VALUES ('French Vanilla', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Honeysuckle', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Lush Necter', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Peach Grapefruit Thyme', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Pink Grapefruit', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Ruby Red Grapefruit', 'NA');
-- INSERT INTO scents (name, association) VALUES ('Sugar Plum', 'NA') RETURNING *;

-- INSERT INTO scent (name, amount) VALUES ('Apple Jack & Peel', '32') RETURNING *;

-- STEP 1: RUN COMMAND "psql".
-- STEP 2: RUN COMMAND "CREATE DATABASE rebottle;"
-- STEP 3: RUN COMMAND "\q"
-- STEP 4: RUN COMMAND "psql -f schema/candles.sql -d rebottle;"