SELECT * FROM "release_group", "release_group_primary_type", "release", "release_country", "medium", "release_status", "artist_credit", "release_unknown_country", "medium_cdtoc", "language", "release_group_secondary_type_join", "release_group_secondary_type", "country_area", "release_packaging", "work_language", "work", "work_type", "track", "work_attribute", "work_alias", "work_alias_type" WHERE "release_group"."type" = "release_group_primary_type"."id" AND "release_group"."id" = "release"."release_group" AND "release"."id" = "release_country"."release" AND "release"."id" = "medium"."release" AND "release"."status" = "release_status"."id" AND "release_group"."artist_credit" = "artist_credit"."id" AND "release"."id" = "release_unknown_country"."release" AND "medium"."id" = "medium_cdtoc"."medium" AND "release"."language" = "language"."id" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "release_country"."country" = "country_area"."area" AND "release"."packaging" = "release_packaging"."id" AND "language"."id" = "work_language"."language" AND "work_language"."work" = "work"."id" AND "work"."type" = "work_type"."id" AND "medium"."id" = "track"."medium" AND "work"."id" = "work_attribute"."work" AND "work"."id" = "work_alias"."work" AND "work_alias"."type" = "work_alias_type"."id";
