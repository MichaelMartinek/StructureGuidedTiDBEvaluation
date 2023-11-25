SELECT * FROM "isrc", "recording", "artist_credit", "release_group", "release_group_secondary_type_join", "track", "release_group_secondary_type", "medium", "medium_format", "release", "release_group_primary_type", "medium_cdtoc", "release_country", "script", "artist_credit_name", "release_packaging", "release_status", "language", "artist", "cdtoc", "artist_ipi", "work_language", "gender", "artist_isni", "release_label", "artist_type", "work", "release_unknown_country", "work_attribute" WHERE "isrc"."recording" = "recording"."id" AND "recording"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "artist_credit"."id" = "track"."artist_credit" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "track"."medium" = "medium"."id" AND "medium"."format" = "medium_format"."id" AND "release_group"."id" = "release"."release_group" AND "medium"."release" = "release"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "medium"."id" = "medium_cdtoc"."medium" AND "release"."id" = "release_country"."release" AND "release"."script" = "script"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "release"."packaging" = "release_packaging"."id" AND "release"."status" = "release_status"."id" AND "release"."language" = "language"."id" AND "artist_credit_name"."artist" = "artist"."id" AND "medium_cdtoc"."cdtoc" = "cdtoc"."id" AND "artist"."id" = "artist_ipi"."artist" AND "language"."id" = "work_language"."language" AND "artist"."gender" = "gender"."id" AND "artist"."id" = "artist_isni"."artist" AND "release"."id" = "release_label"."release" AND "artist"."type" = "artist_type"."id" AND "work_language"."work" = "work"."id" AND "release"."id" = "release_unknown_country"."release" AND "work"."id" = "work_attribute"."work";
