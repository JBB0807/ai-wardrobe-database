
ALTER TABLE "User"
DROP CONSTRAINT IF EXISTS "user_user_type_fk";

ALTER TABLE "User"
DROP COLUMN IF EXISTS "fkusertypeid";

ALTER TABLE "User" RENAME TO "RegisteredUser";

DROP TABLE IF EXISTS "UserTypes";

CREATE TABLE IF NOT EXISTS "DbVersion" (
    versionNum DECIMAL 
);

INSERT INTO "DbVersion" VALUES (1.1);

