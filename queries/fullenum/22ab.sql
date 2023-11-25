SELECT * FROM "release_group_secondary_type_join", "release_group_secondary_type", "release_group", "artist_credit", "track", "release_group_primary_type", "release", "language", "release_unknown_country", "work_language", "recording", "script", "release_status", "isrc", "release_packaging", "work", "work_type", "work_alias", "medium", "medium_format", "release_country", "release_label" WHERE "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "release_group_secondary_type_join"."release_group" = "release_group"."id" AND "release_group"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "track"."artist_credit" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_group"."id" = "release"."release_group" AND "release"."language" = "language"."id" AND "release"."id" = "release_unknown_country"."release" AND "language"."id" = "work_language"."language" AND "track"."recording" = "recording"."id" AND "artist_credit"."id" = "recording"."artist_credit" AND "release"."script" = "script"."id" AND "release"."status" = "release_status"."id" AND "recording"."id" = "isrc"."recording" AND "release"."packaging" = "release_packaging"."id" AND "work_language"."work" = "work"."id" AND "work"."type" = "work_type"."id" AND "work"."id" = "work_alias"."work" AND "track"."medium" = "medium"."id" AND "medium"."format" = "medium_format"."id" AND "release"."id" = "release_country"."release" AND "release"."id" = "release_label"."release";