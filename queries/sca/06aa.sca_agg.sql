SELECT min(language.id) FROM "language", "work_language", "work", "iswc", "work_type", "work_alias" WHERE "language"."id" = "work_language"."language" AND "work_language"."work" = "work"."id" AND "work"."id" = "iswc"."work" AND "work"."type" = "work_type"."id" AND "work"."id" = "work_alias"."work";

