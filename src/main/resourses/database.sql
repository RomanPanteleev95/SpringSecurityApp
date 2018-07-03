--Table users
CREATE SEQUENCE auto_id_users;
CREATE TABLE users (
  id       INT          NOT NULL DEFAULT nextval('auto_id_users') PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

--Table: roles
CREATE SEQUENCE auto_id_roles;
CREATE TABLE roles (
  id       INT          NOT NULL DEFAULT nextval('auto_id_roles') PRIMARY KEY,
  rolename VARCHAR(255) NOT NULL
);

--Table for mapping user-role
CREATE TABLE user_role(
  user_id INT NOT NULL,
  role_id INT NOT NULL,

  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (role_id) REFERENCES roles(id),

  UNIQUE (user_id, role_id)
);

--Insert data

INSERT INTO users VALUES (1, 'proselyte', '123456');

INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');

INSERT INTO user_role VALUES (1, 2);
