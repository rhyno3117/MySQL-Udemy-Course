-- Define a table with a DEFAULT name specified:
CREATE TABLE cats3  (    
    name VARCHAR(20) DEFAULT 'no name provided',    
    age INT DEFAULT 99  
);

-- Notice the change when you describe the table:
DESC cats3;

-- Insert a cat without a name:
INSERT INTO cats3(age) VALUES(13);

-- Or a nameless, ageless cat:
INSERT INTO cats3() VALUES();

-- Combine NOT NULL and DEFAULT:
CREATE TABLE cats4  (    
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',    
    age INT NOT NULL DEFAULT 99 
);