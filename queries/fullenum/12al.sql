SELECT * FROM "iswc", "work", "work_attribute", "work_alias", "work_alias_type", "work_type", "work_language", "language", "work_attribute_type", "release", "release_status", "release_group" WHERE "iswc"."work" = "work"."id" AND "work"."id" = "work_attribute"."work" AND "work"."id" = "work_alias"."work" AND "work_alias"."type" = "work_alias_type"."id" AND "work"."type" = "work_type"."id" AND "work"."id" = "work_language"."work" AND "work_language"."language" = "language"."id" AND "work_attribute"."work_attribute_type" = "work_attribute_type"."id" AND "language"."id" = "release"."language" AND "release"."status" = "release_status"."id" AND "release"."release_group" = "release_group"."id";