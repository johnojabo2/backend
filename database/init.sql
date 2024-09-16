CREATE USER postgres WITH PASSWORD 'Pp123456789';
CREATE DATABASE clarustodo;

\c clarustodo;

CREATE TABLE todo (
    todo_id SERIAL PRIMARY KEY,
    description VARCHAR(255)
);

-- Grant all privileges on the todo table to the postgres user
GRANT ALL PRIVILEGES ON TABLE todo TO postgres;

-- Grant usage and update privileges on the sequence to the postgres user
GRANT USAGE, SELECT ON SEQUENCE todo_todo_id_seq TO postgres;
