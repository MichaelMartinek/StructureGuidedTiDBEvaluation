SELECT * FROM "iswc", "work", "work_type", "work_language", "work_alias", "work_attribute", "work_attribute_type_allowed_value" WHERE "iswc"."work" = "work"."id" AND "work"."type" = "work_type"."id" AND "work"."id" = "work_language"."work" AND "work"."id" = "work_alias"."work" AND "work"."id" = "work_attribute"."work" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id";
