CREATE DATABASE labook
    DEFAULT CHARACTER SET = 'utf8mb4';

CREATE TABLE users(  
    id VARCHAR(255) NOT NULL PRIMARY KEY COMMENT 'Primary Key',
    name VARCHAR(255) NOT NULL COMMENT 'name',
    email VARCHAR(255) UNIQUE NOT NULL COMMENT 'email',
    password VARCHAR(255) NOT NULL COMMENT 'password',
) DEFAULT CHARSET UTF8 COMMENT 'newTable';


-- CREATE TABLE accounts(  
--     id VARCHAR(255) NOT NULL PRIMARY KEY,
--     account_name VARCHAR(255) NOT NULL,
--     color VARCHAR(100),
--     value FLOAT NOT NULL,
--     id_user VARCHAR(255),
--     FOREIGN KEY (id_user) REFERENCES users(id)
-- ) DEFAULT CHARSET UTF8 COMMENT 'newTable';

-- CREATE TABLE credit_cards(  
--     id VARCHAR(255) NOT NULL PRIMARY KEY,
--     card_name VARCHAR(255) NOT NULL,
--     color VARCHAR(100),
--     limit_used FLOAT NOT NULL,
--     total_limit FLOAT NOT NULL,
--     best_day INT,
--     due_date INT NOT NULL,
--     id_user VARCHAR(255),
--     FOREIGN KEY (id_user) REFERENCES users(id)
-- ) DEFAULT CHARSET UTF8 COMMENT 'newTable';


-- CREATE TABLE categories(  
--     id VARCHAR(255) NOT NULL PRIMARY KEY,
--     category VARCHAR(255) NOT NULL,
--     id_user VARCHAR(255),
--     FOREIGN KEY (id_user) REFERENCES users(id)
-- ) DEFAULT CHARSET UTF8 COMMENT 'newTable';


-- CREATE TABLE subcategories(  
--     id VARCHAR(255) NOT NULL PRIMARY KEY,
--     subcategory VARCHAR(255) NOT NULL,
--     id_user VARCHAR(255),
--     id_category VARCHAR(255),
--     FOREIGN KEY (id_user) REFERENCES users(id),
--     FOREIGN KEY (id_category) REFERENCES categories(id)
-- ) DEFAULT CHARSET UTF8 COMMENT 'newTable';


-- CREATE TABLE transactions(  
--     id VARCHAR(255) NOT NULL PRIMARY KEY,
--     description VARCHAR(255) NOT NULL,
--     note VARCHAR(500),
--     type VARCHAR(100) NOT NULL,
--     value FLOAT NOT NULL,
--     qtd_installments INT NOT NULL,
--     total_value FLOAT NOT NULL,
--     created_at DATE NOT NULL,
--     payment_date DATE NOT NULL,
--     paid BOOLEAN NOT NULL,
--     paid_date DATE,
--     id_user VARCHAR(255),
--     id_category VARCHAR(255),
--     id_subcategory VARCHAR(255),
--     id_account VARCHAR(255),
--     id_credit_card VARCHAR(255),
--     FOREIGN KEY (id_user) REFERENCES users(id),
--     FOREIGN KEY (id_category) REFERENCES categories(id),
--     FOREIGN KEY (id_subcategory) REFERENCES subcategories(id),
--     FOREIGN KEY (id_account) REFERENCES accounts(id),
--     FOREIGN KEY (id_credit_card) REFERENCES credit_cards(id)
-- ) DEFAULT CHARSET UTF8 COMMENT 'newTable';