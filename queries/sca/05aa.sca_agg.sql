SELECT min(work.type) FROM "work_type", "work", "work_attribute", "iswc", "work_language" WHERE "work_type"."id" = "work"."type" AND "work"."id" = "work_attribute"."work" AND "work"."id" = "iswc"."work" AND "work"."id" = "work_language"."work";

