SELECT * FROM "work", "work_attribute", "work_language", "iswc", "work_alias", "language", "release", "release_packaging", "work_alias_type", "artist_credit", "release_status", "work_type", "work_attribute_type_allowed_value", "release_country", "artist_credit_name", "artist", "medium", "gender", "medium_cdtoc", "track" WHERE "work"."id" = "work_attribute"."work" AND "work"."id" = "work_language"."work" AND "work"."id" = "iswc"."work" AND "work"."id" = "work_alias"."work" AND "work_language"."language" = "language"."id" AND "language"."id" = "release"."language" AND "release"."packaging" = "release_packaging"."id" AND "work_alias"."type" = "work_alias_type"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "release"."status" = "release_status"."id" AND "work"."type" = "work_type"."id" AND "work_attribute"."work_attribute_type_allowed_value" = "work_attribute_type_allowed_value"."id" AND "release"."id" = "release_country"."release" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "artist_credit_name"."artist" = "artist"."id" AND "release"."id" = "medium"."release" AND "artist"."gender" = "gender"."id" AND "medium"."id" = "medium_cdtoc"."medium" AND "medium"."id" = "track"."medium";
