-- 1. Find the April 2048 post mentioning EmptyStack and dad.
SELECT *
FROM forum_posts
WHERE date >= '2048-04-01'
  AND date < '2048-05-01'
  AND content ILIKE '%emptystack%'
  AND content ILIKE '%dad%';

-- Found author: smart-money-44 (April 8, 2048).

-- 2. Find the first and last name of the forum post author.
SELECT first_name, last_name
FROM forum_accounts
WHERE username = 'smart-money-44';

-- The post author is Brad Steele.

-- 3. Find all forum accounts with the same last name.
SELECT *
FROM forum_accounts
WHERE last_name = 'Steele';

-- Found Andrew, Kevin, and Brad Steele.

-- 4. Find all EmptyStack employees with the same last name.
SELECT *
FROM emptystack_accounts
WHERE last_name = 'Steele';

-- Andrew Steele has both a forum account and an employee account.
-- Used triple-cart-38 to log in and load emptystack.sql.

-- 5. Find the message about the taxi project.
SELECT *
FROM emptystack_messages
WHERE body ILIKE '%taxi%';

-- Sender: your-boss-99. Project code: TAXI.

-- 6. Find the admin account credentials.
-- The admin account is your-boss-99.
-- The password is notagaincarter.
-- 
SELECT *
FROM emptystack_accounts
WHERE username = 'your-boss-99';

-- 7. Find the ID of the taxi project.
-- The project ID is DczE0v2b.
SELECT id, code
FROM emptystack_projects
WHERE code = 'TAXI';