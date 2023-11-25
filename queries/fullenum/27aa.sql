SELECT * FROM "work_alias", "work_alias_type", "work", "work_type", "iswc", "work_attribute", "work_attribute_type", "work_language", "work_attribute_type_allowed_value", "language", "release", "release_unknown_country", "release_status", "release_packaging", "release_country", "script", "artist_credit", "release_label", "medium", "medium_format", "country_area", "area", "iso_3166_1", "recording", "track", "medium_cdtoc", "label" WHERE "work_alias"."type" = "work_alias_type"."id" AND "work_alias"."work" = "work"."id" AND "work"."type" = "work_type"."id" AND "work"."id" = "iswc"."work" AND "work"."id" = "work_attribute"."work" AND "work_attribute"."work_attribute_type" = "work_attribute_type"."id" AND "work"."id" = "work_language"."work" AND "work_attribute_type"."id" = "work_attribute_type_allowed_value"."work_attribute_type" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id" AND "work_language"."language" = "language"."id" AND "language"."id" = "release"."language" AND "release"."id" = "release_unknown_country"."release" AND "release"."status" = "release_status"."id" AND "release"."packaging" = "release_packaging"."id" AND "release"."id" = "release_country"."release" AND "release"."script" = "script"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "release"."id" = "release_label"."release" AND "release"."id" = "medium"."release" AND "medium"."format" = "medium_format"."id" AND "release_country"."country" = "country_area"."area" AND "country_area"."area" = "area"."id" AND "area"."id" = "iso_3166_1"."area" AND "artist_credit"."id" = "recording"."artist_credit" AND "recording"."id" = "track"."recording" AND "medium"."id" = "medium_cdtoc"."medium" AND "release_label"."label" = "label"."id" AND "area"."id" = "label"."area";
