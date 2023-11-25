SELECT * FROM "country_area", "area", "artist", "artist_type", "area_alias", "release_country", "iso_3166_2", "place", "place_alias", "gender", "place_alias_type", "iso_3166_3", "artist_isni", "release", "iso_3166_1", "release_unknown_country", "label", "release_group", "label_type", "area_alias_type", "label_isni", "release_label", "label_ipi", "release_packaging", "label_alias", "release_group_secondary_type_join" WHERE "country_area"."area" = "area"."id" AND "area"."id" = "artist"."area" AND "artist"."type" = "artist_type"."id" AND "area"."id" = "area_alias"."area" AND "country_area"."area" = "release_country"."country" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "place"."area" AND "place"."id" = "place_alias"."place" AND "artist"."gender" = "gender"."id" AND "place_alias"."type" = "place_alias_type"."id" AND "area"."id" = "iso_3166_3"."area" AND "artist"."id" = "artist_isni"."artist" AND "release_country"."release" = "release"."id" AND "area"."id" = "iso_3166_1"."area" AND "release"."id" = "release_unknown_country"."release" AND "area"."id" = "label"."area" AND "release"."release_group" = "release_group"."id" AND "label"."type" = "label_type"."id" AND "area_alias"."type" = "area_alias_type"."id" AND "label"."id" = "label_isni"."label" AND "label"."id" = "release_label"."label" AND "label"."id" = "label_ipi"."label" AND "release"."packaging" = "release_packaging"."id" AND "label"."id" = "label_alias"."label" AND "release_group"."id" = "release_group_secondary_type_join"."release_group";
