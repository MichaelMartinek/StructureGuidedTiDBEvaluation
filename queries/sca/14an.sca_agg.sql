SELECT min(release_group_secondary_type.id) FROM "release_group_secondary_type", "release_group_secondary_type_join", "release_group", "artist_credit", "release_group_primary_type", "release", "recording", "artist_credit_name", "medium", "medium_cdtoc", "release_label", "language", "release_country", "country_area" WHERE "release_group_secondary_type"."id" = "release_group_secondary_type_join"."secondary_type" AND "release_group_secondary_type_join"."release_group" = "release_group"."id" AND "release_group"."artist_credit" = "artist_credit"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_group"."id" = "release"."release_group" AND "artist_credit"."id" = "release"."artist_credit" AND "artist_credit"."id" = "recording"."artist_credit" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "release"."id" = "medium"."release" AND "medium"."id" = "medium_cdtoc"."medium" AND "release"."id" = "release_label"."release" AND "release"."language" = "language"."id" AND "release"."id" = "release_country"."release" AND "release_country"."country" = "country_area"."area";

