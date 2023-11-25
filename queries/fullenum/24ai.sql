SELECT * FROM "work_alias", "work_alias_type", "work", "work_language", "work_type", "iswc", "work_attribute", "work_attribute_type", "language", "work_attribute_type_allowed_value", "release", "release_packaging", "script", "release_unknown_country", "release_country", "medium", "medium_cdtoc", "medium_format", "cdtoc", "release_status", "release_label", "release_group", "country_area", "artist_credit" WHERE "work_alias"."type" = "work_alias_type"."id" AND "work_alias"."work" = "work"."id" AND "work"."id" = "work_language"."work" AND "work"."type" = "work_type"."id" AND "work"."id" = "iswc"."work" AND "work"."id" = "work_attribute"."work" AND "work_attribute"."work_attribute_type" = "work_attribute_type"."id" AND "work_language"."language" = "language"."id" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id" AND "language"."id" = "release"."language" AND "release"."packaging" = "release_packaging"."id" AND "release"."script" = "script"."id" AND "release"."id" = "release_unknown_country"."release" AND "release"."id" = "release_country"."release" AND "release"."id" = "medium"."release" AND "medium"."id" = "medium_cdtoc"."medium" AND "medium"."format" = "medium_format"."id" AND "medium_cdtoc"."cdtoc" = "cdtoc"."id" AND "release"."status" = "release_status"."id" AND "release"."id" = "release_label"."release" AND "release"."release_group" = "release_group"."id" AND "release_country"."country" = "country_area"."area" AND "release"."artist_credit" = "artist_credit"."id";