SELECT * FROM "label_alias_type", "label_alias", "label", "label_isni", "label_type", "area", "iso_3166_2", "place", "release_label", "release", "place_type", "release_packaging", "iso_3166_3", "release_country", "artist", "artist_credit", "release_unknown_country", "release_group", "artist_type", "release_group_secondary_type_join", "country_area", "area_alias", "artist_alias", "release_group_secondary_type", "area_type", "artist_ipi", "label_ipi", "iso_3166_1", "artist_isni" WHERE "label_alias_type"."id" = "label_alias"."type" AND "label_alias"."label" = "label"."id" AND "label"."id" = "label_isni"."label" AND "label"."type" = "label_type"."id" AND "label"."area" = "area"."id" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "place"."area" AND "label"."id" = "release_label"."label" AND "release_label"."release" = "release"."id" AND "place"."type" = "place_type"."id" AND "release"."packaging" = "release_packaging"."id" AND "area"."id" = "iso_3166_3"."area" AND "release"."id" = "release_country"."release" AND "area"."id" = "artist"."area" AND "release"."artist_credit" = "artist_credit"."id" AND "release"."id" = "release_unknown_country"."release" AND "artist_credit"."id" = "release_group"."artist_credit" AND "artist"."type" = "artist_type"."id" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release_country"."country" = "country_area"."area" AND "area"."id" = "area_alias"."area" AND "artist"."id" = "artist_alias"."artist" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "area"."type" = "area_type"."id" AND "artist"."id" = "artist_ipi"."artist" AND "label"."id" = "label_ipi"."label" AND "area"."id" = "iso_3166_1"."area" AND "artist"."id" = "artist_isni"."artist";
