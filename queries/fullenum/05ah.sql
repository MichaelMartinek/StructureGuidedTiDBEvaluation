SELECT * FROM "work_attribute_type_allowed_value", "work_attribute", "work_attribute_type", "work", "work_language" WHERE "work_attribute_type_allowed_value"."id" = "work_attribute"."work_attribute_type_allowed_value" AND "work_attribute"."work_attribute_type" = "work_attribute_type"."id" AND "work_attribute"."work" = "work"."id" AND "work"."id" = "work_language"."work";
