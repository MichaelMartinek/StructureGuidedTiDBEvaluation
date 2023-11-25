SELECT min(iswc.work) FROM "iswc", "work", "work_alias", "work_alias_type", "work_type", "work_attribute", "work_language" WHERE "iswc"."work" = "work"."id" AND "work"."id" = "work_alias"."work" AND "work_alias"."type" = "work_alias_type"."id" AND "work"."type" = "work_type"."id" AND "work"."id" = "work_attribute"."work" AND "work"."id" = "work_language"."work";

