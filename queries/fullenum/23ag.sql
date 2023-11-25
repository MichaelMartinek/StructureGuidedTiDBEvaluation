SELECT * FROM "work_alias_type", "work_alias", "work", "work_attribute", "iswc", "work_attribute_type_allowed_value", "work_language", "language", "release", "release_unknown_country", "release_label", "release_packaging", "medium", "work_type", "track", "script", "artist_credit", "release_status", "label", "release_group", "label_type", "recording", "medium_cdtoc" WHERE "work_alias_type"."id" = "work_alias"."type" AND "work_alias"."work" = "work"."id" AND "work"."id" = "work_attribute"."work" AND "work"."id" = "iswc"."work" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id" AND "work"."id" = "work_language"."work" AND "work_language"."language" = "language"."id" AND "language"."id" = "release"."language" AND "release"."id" = "release_unknown_country"."release" AND "release"."id" = "release_label"."release" AND "release"."packaging" = "release_packaging"."id" AND "release"."id" = "medium"."release" AND "work"."type" = "work_type"."id" AND "medium"."id" = "track"."medium" AND "release"."script" = "script"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "track"."artist_credit" = "artist_credit"."id" AND "release"."status" = "release_status"."id" AND "release_label"."label" = "label"."id" AND "release"."release_group" = "release_group"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "label"."type" = "label_type"."id" AND "track"."recording" = "recording"."id" AND "artist_credit"."id" = "recording"."artist_credit" AND "medium"."id" = "medium_cdtoc"."medium";
