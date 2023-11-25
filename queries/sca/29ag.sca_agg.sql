SELECT min(medium.format) FROM "medium", "medium_format", "medium_cdtoc", "track", "artist_credit", "artist_credit_name", "release", "artist", "release_status", "artist_ipi", "artist_alias", "release_unknown_country", "release_group", "release_packaging", "release_group_primary_type", "artist_alias_type", "release_country", "artist_type", "recording", "release_group_secondary_type_join", "isrc", "release_group_secondary_type", "country_area", "script", "cdtoc", "release_label", "area", "place", "iso_3166_2" WHERE "medium"."format" = "medium_format"."id" AND "medium"."id" = "medium_cdtoc"."medium" AND "medium"."id" = "track"."medium" AND "track"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "medium"."release" = "release"."id" AND "artist_credit"."id" = "release"."artist_credit" AND "artist_credit_name"."artist" = "artist"."id" AND "release"."status" = "release_status"."id" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."id" = "artist_alias"."artist" AND "release"."id" = "release_unknown_country"."release" AND "artist_credit"."id" = "release_group"."artist_credit" AND "release"."release_group" = "release_group"."id" AND "release"."packaging" = "release_packaging"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "artist_alias"."type" = "artist_alias_type"."id" AND "release"."id" = "release_country"."release" AND "artist"."type" = "artist_type"."id" AND "artist_credit"."id" = "recording"."artist_credit" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "recording"."id" = "isrc"."recording" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "release_country"."country" = "country_area"."area" AND "release"."script" = "script"."id" AND "medium_cdtoc"."cdtoc" = "cdtoc"."id" AND "release"."id" = "release_label"."release" AND "artist"."area" = "area"."id" AND "country_area"."area" = "area"."id" AND "area"."id" = "place"."area" AND "area"."id" = "iso_3166_2"."area";

