SELECT * FROM "work_attribute_type", "work_attribute", "work_attribute_type_allowed_value", "work", "work_type", "iswc", "work_alias", "work_language", "work_alias_type", "language", "release", "artist_credit", "release_unknown_country", "release_group", "recording", "release_packaging", "release_group_primary_type", "release_status", "release_country", "track", "country_area", "artist_credit_name", "area" WHERE "work_attribute_type"."id" = "work_attribute"."work_attribute_type" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id" AND "work_attribute_type"."id" = "work_attribute_type_allowed_value"."work_attribute_type" AND "work_attribute"."work" = "work"."id" AND "work"."type" = "work_type"."id" AND "work"."id" = "iswc"."work" AND "work"."id" = "work_alias"."work" AND "work"."id" = "work_language"."work" AND "work_alias"."type" = "work_alias_type"."id" AND "work_language"."language" = "language"."id" AND "language"."id" = "release"."language" AND "release"."artist_credit" = "artist_credit"."id" AND "release"."id" = "release_unknown_country"."release" AND "release"."release_group" = "release_group"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "artist_credit"."id" = "recording"."artist_credit" AND "release"."packaging" = "release_packaging"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "release"."status" = "release_status"."id" AND "release"."id" = "release_country"."release" AND "artist_credit"."id" = "track"."artist_credit" AND "recording"."id" = "track"."recording" AND "release_country"."country" = "country_area"."area" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "country_area"."area" = "area"."id";
