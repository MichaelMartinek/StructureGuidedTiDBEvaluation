SELECT min(work_attribute.work_attribute_type) FROM "work_attribute_type_allowed_value", "work_attribute_type", "work_attribute", "work", "iswc", "work_language", "work_alias", "work_alias_type", "language", "work_type", "release", "medium", "track", "release_country", "release_status", "medium_format", "medium_cdtoc", "country_area" WHERE "work_attribute_type_allowed_value"."work_attribute_type" = "work_attribute_type"."id" AND "work_attribute_type_allowed_value"."id" = "work_attribute"."work_attribute_type_allowed_value" AND "work_attribute_type"."id" = "work_attribute"."work_attribute_type" AND "work_attribute"."work" = "work"."id" AND "work"."id" = "iswc"."work" AND "work"."id" = "work_language"."work" AND "work"."id" = "work_alias"."work" AND "work_alias"."type" = "work_alias_type"."id" AND "work_language"."language" = "language"."id" AND "work"."type" = "work_type"."id" AND "language"."id" = "release"."language" AND "release"."id" = "medium"."release" AND "medium"."id" = "track"."medium" AND "release"."id" = "release_country"."release" AND "release"."status" = "release_status"."id" AND "medium"."format" = "medium_format"."id" AND "medium"."id" = "medium_cdtoc"."medium" AND "release_country"."country" = "country_area"."area";
