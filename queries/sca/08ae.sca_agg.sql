SELECT min(work_alias.type) FROM "work_alias_type", "work_alias", "work", "work_attribute", "work_language", "work_attribute_type", "work_type", "work_attribute_type_allowed_value" WHERE "work_alias_type"."id" = "work_alias"."type" AND "work_alias"."work" = "work"."id" AND "work"."id" = "work_attribute"."work" AND "work"."id" = "work_language"."work" AND "work_attribute"."work_attribute_type" = "work_attribute_type"."id" AND "work"."type" = "work_type"."id" AND "work_attribute_type"."id" = "work_attribute_type_allowed_value"."work_attribute_type" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id";

