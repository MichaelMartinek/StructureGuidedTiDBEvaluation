SELECT * FROM "medium_cdtoc", "medium", "release", "cdtoc", "release_unknown_country", "script", "release_group", "release_label", "release_group_secondary_type_join", "label", "area", "release_packaging", "place", "place_type", "iso_3166_3", "language", "release_group_primary_type", "artist_credit", "country_area", "work_language", "iso_3166_1", "medium_format", "label_type", "label_alias" WHERE "medium_cdtoc"."medium" = "medium"."id" AND "medium"."release" = "release"."id" AND "medium_cdtoc"."cdtoc" = "cdtoc"."id" AND "release"."id" = "release_unknown_country"."release" AND "release"."script" = "script"."id" AND "release"."release_group" = "release_group"."id" AND "release"."id" = "release_label"."release" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release_label"."label" = "label"."id" AND "label"."area" = "area"."id" AND "release"."packaging" = "release_packaging"."id" AND "area"."id" = "place"."area" AND "place"."type" = "place_type"."id" AND "area"."id" = "iso_3166_3"."area" AND "release"."language" = "language"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "release_group"."artist_credit" = "artist_credit"."id" AND "area"."id" = "country_area"."area" AND "language"."id" = "work_language"."language" AND "area"."id" = "iso_3166_1"."area" AND "medium"."format" = "medium_format"."id" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_alias"."label";
