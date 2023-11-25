SELECT min(medium.release) FROM "medium", "release", "track", "language", "script", "release_group", "medium_format", "medium_cdtoc", "work_language", "artist_credit", "release_unknown_country", "release_group_primary_type", "release_group_secondary_type_join", "release_country" WHERE "medium"."release" = "release"."id" AND "medium"."id" = "track"."medium" AND "release"."language" = "language"."id" AND "release"."script" = "script"."id" AND "release"."release_group" = "release_group"."id" AND "medium"."format" = "medium_format"."id" AND "medium"."id" = "medium_cdtoc"."medium" AND "language"."id" = "work_language"."language" AND "release"."artist_credit" = "artist_credit"."id" AND "track"."artist_credit" = "artist_credit"."id" AND "release"."id" = "release_unknown_country"."release" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release"."id" = "release_country"."release";
