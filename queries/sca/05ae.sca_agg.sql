SELECT min(iswc.work) FROM "iswc", "work", "work_language", "work_alias", "work_type" WHERE "iswc"."work" = "work"."id" AND "work"."id" = "work_language"."work" AND "work"."id" = "work_alias"."work" AND "work"."type" = "work_type"."id";

