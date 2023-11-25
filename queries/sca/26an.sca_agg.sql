SELECT min(medium.id) FROM "medium_cdtoc", "medium", "release", "language", "cdtoc", "artist_credit", "release_group", "medium_format", "track", "release_country", "release_group_primary_type", "country_area", "work_language", "recording", "release_unknown_country", "work", "artist_credit_name", "artist", "work_alias", "iswc", "area", "area_type", "iso_3166_1", "isrc", "work_alias_type", "area_alias" WHERE "medium_cdtoc"."medium" = "medium"."id" AND "medium"."release" = "release"."id" AND "release"."language" = "language"."id" AND "medium_cdtoc"."cdtoc" = "cdtoc"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "release"."release_group" = "release_group"."id" AND "medium"."format" = "medium_format"."id" AND "medium"."id" = "track"."medium" AND "artist_credit"."id" = "track"."artist_credit" AND "release"."id" = "release_country"."release" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_country"."country" = "country_area"."area" AND "language"."id" = "work_language"."language" AND "track"."recording" = "recording"."id" AND "artist_credit"."id" = "recording"."artist_credit" AND "release"."id" = "release_unknown_country"."release" AND "work_language"."work" = "work"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "artist_credit_name"."artist" = "artist"."id" AND "work"."id" = "work_alias"."work" AND "work"."id" = "iswc"."work" AND "country_area"."area" = "area"."id" AND "area"."type" = "area_type"."id" AND "area"."id" = "iso_3166_1"."area" AND "recording"."id" = "isrc"."recording" AND "work_alias"."type" = "work_alias_type"."id" AND "area"."id" = "area_alias"."area";
