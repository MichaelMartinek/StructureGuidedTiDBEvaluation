SELECT min(medium.id) FROM "medium_cdtoc", "medium", "cdtoc", "track", "recording", "artist_credit", "medium_format", "release", "release_status", "artist_credit_name", "release_label", "release_group", "artist", "artist_type", "release_group_primary_type", "release_packaging", "release_group_secondary_type_join", "language", "artist_alias", "release_group_secondary_type", "isrc", "artist_alias_type", "script" WHERE "medium_cdtoc"."medium" = "medium"."id" AND "medium_cdtoc"."cdtoc" = "cdtoc"."id" AND "medium"."id" = "track"."medium" AND "track"."recording" = "recording"."id" AND "recording"."artist_credit" = "artist_credit"."id" AND "medium"."format" = "medium_format"."id" AND "medium"."release" = "release"."id" AND "artist_credit"."id" = "release"."artist_credit" AND "release"."status" = "release_status"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "release"."id" = "release_label"."release" AND "artist_credit"."id" = "release_group"."artist_credit" AND "release"."release_group" = "release_group"."id" AND "artist_credit_name"."artist" = "artist"."id" AND "artist"."type" = "artist_type"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "release"."packaging" = "release_packaging"."id" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release"."language" = "language"."id" AND "artist"."id" = "artist_alias"."artist" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "recording"."id" = "isrc"."recording" AND "artist_alias"."type" = "artist_alias_type"."id" AND "release"."script" = "script"."id";

