CREATE TABLE accounts (
  account_name      VARCHAR(100) NOT NULL PRIMARY KEY
);

CREATE TABLE products (
  product_id        INTEGER NOT NULL PRIMARY KEY,
  product_name      VARCHAR(100)
);

CREATE TABLE bugs (
  bug_id            INTEGER NOT NULL PRIMARY KEY,
  bug_description   VARCHAR(100),
  bug_status        VARCHAR(20),
  reported_by       VARCHAR(100) REFERENCES accounts(account_name),
  assigned_to       VARCHAR(100) REFERENCES accounts(account_name),
  verified_by       VARCHAR(100) REFERENCES accounts(account_name)
);

CREATE TABLE bugs_products (
  bug_id            INTEGER NOT NULL REFERENCES bugs,
  product_id        INTEGER NOT NULL REFERENCES products,
  PRIMARY KEY       (bug_id, product_id)
);