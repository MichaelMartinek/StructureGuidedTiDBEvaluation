SELECT min(language.id) FROM "language", "work_language", "release", "work", "work_alias", "release_status", "script" WHERE "language"."id" = "work_language"."language" AND "language"."id" = "release"."language" AND "work_language"."work" = "work"."id" AND "work"."id" = "work_alias"."work" AND "release"."status" = "release_status"."id" AND "release"."script" = "script"."id";

