SELECT min(iswc.work) FROM "iswc", "work", "work_alias", "work_language", "language", "work_type", "work_attribute", "release", "work_attribute_type_allowed_value", "release_country" WHERE "iswc"."work" = "work"."id" AND "work"."id" = "work_alias"."work" AND "work"."id" = "work_language"."work" AND "work_language"."language" = "language"."id" AND "work"."type" = "work_type"."id" AND "work"."id" = "work_attribute"."work" AND "language"."id" = "release"."language" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id" AND "release"."id" = "release_country"."release";

