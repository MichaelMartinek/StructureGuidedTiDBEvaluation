SELECT * FROM "area", "place", "iso_3166_3", "area_alias", "label", "area_type", "place_type", "area_alias_type", "place_alias", "place_alias_type", "label_alias", "label_ipi", "iso_3166_1", "label_isni", "label_alias_type", "country_area", "label_type", "iso_3166_2", "release_country", "artist", "release_label", "artist_ipi", "release", "artist_alias" WHERE "area"."id" = "place"."area" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "area_alias"."area" AND "area"."id" = "label"."area" AND "area"."type" = "area_type"."id" AND "place"."type" = "place_type"."id" AND "area_alias"."type" = "area_alias_type"."id" AND "place"."id" = "place_alias"."place" AND "place_alias"."type" = "place_alias_type"."id" AND "label"."id" = "label_alias"."label" AND "label"."id" = "label_ipi"."label" AND "area"."id" = "iso_3166_1"."area" AND "label"."id" = "label_isni"."label" AND "label_alias"."type" = "label_alias_type"."id" AND "area"."id" = "country_area"."area" AND "label"."type" = "label_type"."id" AND "area"."id" = "iso_3166_2"."area" AND "country_area"."area" = "release_country"."country" AND "area"."id" = "artist"."area" AND "label"."id" = "release_label"."label" AND "artist"."id" = "artist_ipi"."artist" AND "release_label"."release" = "release"."id" AND "release_country"."release" = "release"."id" AND "artist"."id" = "artist_alias"."artist";