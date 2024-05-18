RENAME TABLE companies to suppliers;


ALTER TABLE suppliers RENAME TO companies;


ALTER TABLE companies
RENAME COLUMN name TO company_name;
