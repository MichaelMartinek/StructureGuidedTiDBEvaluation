SELECT * FROM "iswc", "work", "work_type", "work_language", "work_attribute", "work_alias", "language", "work_alias_type", "work_attribute_type", "work_attribute_type_allowed_value", "release", "release_status", "release_packaging", "release_unknown_country", "release_group", "release_label" WHERE "iswc"."work" = "work"."id" AND "work"."type" = "work_type"."id" AND "work"."id" = "work_language"."work" AND "work"."id" = "work_attribute"."work" AND "work"."id" = "work_alias"."work" AND "work_language"."language" = "language"."id" AND "work_alias"."type" = "work_alias_type"."id" AND "work_attribute"."work_attribute_type" = "work_attribute_type"."id" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id" AND "work_attribute_type"."id" = "work_attribute_type_allowed_value"."work_attribute_type" AND "language"."id" = "release"."language" AND "release"."status" = "release_status"."id" AND "release"."packaging" = "release_packaging"."id" AND "release"."id" = "release_unknown_country"."release" AND "release"."release_group" = "release_group"."id" AND "release"."id" = "release_label"."release";
