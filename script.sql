-- Taken from https://github.com/prisma/prisma/issues/2504
CREATE TABLE request (
  id INT NOT NULL PRIMARY KEY,
  from_user INT,
  to_user INT,
  active BOOLEAN DEFAULT true
);

-- Does not end up creating a comment
CREATE UNIQUE INDEX request_index_constraint 
ON request(GREATEST(from_user,to_user), LEAST(from_user,to_user))
WHERE (active);

-- Does end up creating a comment
CREATE UNIQUE INDEX "request_from_to_active" ON "request"(hash_record_extended(("from_user", "to_user", "active"), 0));