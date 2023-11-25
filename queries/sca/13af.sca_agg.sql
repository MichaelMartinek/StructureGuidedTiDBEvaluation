SELECT min(work_attribute.work_attribute_type) FROM "work_attribute_type", "work_attribute", "work_attribute_type_allowed_value", "work", "work_type", "work_language", "iswc", "work_alias", "work_alias_type", "language", "release", "release_unknown_country", "release_label" WHERE "work_attribute_type"."id" = "work_attribute"."work_attribute_type" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id" AND "work_attribute"."work" = "work"."id" AND "work"."type" = "work_type"."id" AND "work"."id" = "work_language"."work" AND "work"."id" = "iswc"."work" AND "work"."id" = "work_alias"."work" AND "work_alias"."type" = "work_alias_type"."id" AND "work_language"."language" = "language"."id" AND "language"."id" = "release"."language" AND "release"."id" = "release_unknown_country"."release" AND "release"."id" = "release_label"."release";

