ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';


ALTER TABLE suppliers
CHANGE business biz_name VARCHAR(50);