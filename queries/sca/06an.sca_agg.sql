SELECT min(work_alias.type) FROM "work_alias_type", "work_alias", "work", "iswc", "work_attribute", "work_attribute_type" WHERE "work_alias_type"."id" = "work_alias"."type" AND "work_alias"."work" = "work"."id" AND "work"."id" = "iswc"."work" AND "work"."id" = "work_attribute"."work" AND "work_attribute"."work_attribute_type" = "work_attribute_type"."id";

