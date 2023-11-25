SELECT * FROM "work_attribute", "work", "work_attribute_type_allowed_value", "work_language", "work_alias", "iswc", "language", "work_type", "work_attribute_type", "release", "release_country", "release_packaging", "script", "release_status", "artist_credit", "artist_credit_name", "work_alias_type", "release_label", "country_area", "recording", "release_group", "release_group_primary_type", "artist", "release_unknown_country", "label" WHERE "work_attribute"."work" = "work"."id" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id" AND "work"."id" = "work_language"."work" AND "work"."id" = "work_alias"."work" AND "work"."id" = "iswc"."work" AND "work_language"."language" = "language"."id" AND "work"."type" = "work_type"."id" AND "work_attribute"."work_attribute_type" = "work_attribute_type"."id" AND "work_attribute_type_allowed_value"."work_attribute_type" = "work_attribute_type"."id" AND "language"."id" = "release"."language" AND "release"."id" = "release_country"."release" AND "release"."packaging" = "release_packaging"."id" AND "release"."script" = "script"."id" AND "release"."status" = "release_status"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "work_alias"."type" = "work_alias_type"."id" AND "release"."id" = "release_label"."release" AND "release_country"."country" = "country_area"."area" AND "artist_credit"."id" = "recording"."artist_credit" AND "release"."release_group" = "release_group"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "artist_credit_name"."artist" = "artist"."id" AND "release"."id" = "release_unknown_country"."release" AND "release_label"."label" = "label"."id";
