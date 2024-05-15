-- Delete all 4 year old cats:
DELETE FROM cats WHERE age=4;

-- Delete cats where cat_id is the same as their age:
DELETE FROM cats WHERE cat_id=age;

-- Delete all cats:
DELETE FROM cats;