-- App with id 1880
SELECT id, app_name FROM analytics WHERE id = 1880;

-- Apps updated on August 01, 2018.
SELECT id, app_name FROM analytics WHERE last_updated = 2018-08-03;

--Number of apps in each category
SELECT category, COUNT(*) FROM analytics GROUP BY category;

-- Top 5 most reviewed apps.
SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;

-- The app with most reviews 
SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;

-- The average rating for each category from highest to lowest
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg desc;

-- The most expensive app with rating less than 3.
SELECT app_name, price, rating FROM analytics WHERE price < 3 ORDER BY price desc LIMIT 1;

-- Apps with min_install less than 50, with rating from highest to lowest.
SELECT app_name, min_installs, rating FROM analytics WHERE min_installs < 50 AND rating IS NOT NULL ORDER BY rating desc;

-- Names of apps rated less than 3 with minimum 10000 reviews.
SELECT app_names FROM analytics WHERE rating < 3 AND reviews >= 10000;

-- TOP 10 most reviewed apps between 10 cents and one dollar.
SELECT app_name FROM analytics WHERE price BETWEEN 0.10 AND 1;

--Most out of date app.
SELECT * FROM analytics WHERE last_updated = (SELECT MAX(last_updated) FROM analytics);

-- The most expensive app
SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);

-- Counting all the reviews in Google playstore
SELECT SUM(reviews) AS all_reviews FROM analytics;

-- Categories that have more than 300 apps.
SELECT category, COUNT(*) FROM analytics GROUP BY category;

-- 