SELECT min(medium.format) FROM "medium", "medium_format", "track", "medium_cdtoc", "recording", "artist_credit", "cdtoc", "artist_credit_name", "isrc", "release_group", "artist", "artist_ipi", "gender", "artist_alias", "area", "artist_isni", "release", "release_group_primary_type", "release_group_secondary_type_join" WHERE "medium"."format" = "medium_format"."id" AND "medium"."id" = "track"."medium" AND "medium"."id" = "medium_cdtoc"."medium" AND "track"."recording" = "recording"."id" AND "recording"."artist_credit" = "artist_credit"."id" AND "track"."artist_credit" = "artist_credit"."id" AND "medium_cdtoc"."cdtoc" = "cdtoc"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "recording"."id" = "isrc"."recording" AND "artist_credit"."id" = "release_group"."artist_credit" AND "artist_credit_name"."artist" = "artist"."id" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."gender" = "gender"."id" AND "artist"."id" = "artist_alias"."artist" AND "artist"."area" = "area"."id" AND "artist"."id" = "artist_isni"."artist" AND "artist_credit"."id" = "release"."artist_credit" AND "medium"."release" = "release"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_group"."id" = "release_group_secondary_type_join"."release_group";
