SELECT min(work_alias.type) FROM "work_alias_type", "work_alias", "work", "work_attribute", "work_type", "work_language" WHERE "work_alias_type"."id" = "work_alias"."type" AND "work_alias"."work" = "work"."id" AND "work"."id" = "work_attribute"."work" AND "work"."type" = "work_type"."id" AND "work"."id" = "work_language"."work";

