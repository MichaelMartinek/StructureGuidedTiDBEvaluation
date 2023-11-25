SELECT min(work_attribute.work_attribute_type) FROM "work_attribute", "work_attribute_type", "work", "work_type", "work_alias", "work_attribute_type_allowed_value", "work_alias_type", "iswc", "work_language", "language", "release", "release_group", "script", "release_label", "release_status", "release_unknown_country", "release_group_secondary_type_join", "medium", "medium_format", "track", "release_country", "release_group_primary_type" WHERE "work_attribute"."work_attribute_type" = "work_attribute_type"."id" AND "work_attribute"."work" = "work"."id" AND "work"."type" = "work_type"."id" AND "work"."id" = "work_alias"."work" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id" AND "work_alias"."type" = "work_alias_type"."id" AND "work"."id" = "iswc"."work" AND "work"."id" = "work_language"."work" AND "work_language"."language" = "language"."id" AND "language"."id" = "release"."language" AND "release"."release_group" = "release_group"."id" AND "release"."script" = "script"."id" AND "release"."id" = "release_label"."release" AND "release"."status" = "release_status"."id" AND "release"."id" = "release_unknown_country"."release" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release"."id" = "medium"."release" AND "medium"."format" = "medium_format"."id" AND "medium"."id" = "track"."medium" AND "release"."id" = "release_country"."release" AND "release_group"."type" = "release_group_primary_type"."id";

