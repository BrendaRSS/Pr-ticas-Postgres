-- Resposta:
SELECT users.id, users.name, roles.name AS "role", companies.name AS "company", e."startDate" FROM users JOIN experiences ON users.id = experiences."userId" JOIN roles ON roles.id = experiences."roleId" JOIN companies ON companies.id = experiences."companyId" JOIN experiences e ON e."userId" = users.id  WHERE users.id = 50 AND experiences."endDate" is NULL ORDER BY experiences."startDate" DESC;


-- testes:
-- SELECT users.id, users.name, roles.name AS "role", companies.name AS "company", e."startDate" FROM users JOIN experiences ON users.id = experiences."userId" JOIN roles ON roles.id = experiences."roleId" JOIN companies ON companies.id = experiences."companyId" JOIN experiences e ON e."userId" = users.id  WHERE users.id = 50;
-- ORDER BY DESC 
-- WHERE x = y AND u = e  IS NOT NULL ou IS NULL
-- SELECT * FROM experiences WHERE experiences."userId" = 50 AND experiences."endDate" is NULL ORDER BY experiences."startDate";
