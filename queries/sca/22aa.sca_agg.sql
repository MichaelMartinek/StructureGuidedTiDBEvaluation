SELECT min(label.id) FROM "label", "label_isni", "area", "label_alias", "area_alias", "iso_3166_2", "place", "place_alias", "country_area", "label_type", "place_type", "artist", "area_alias_type", "release_label", "area_type", "gender", "iso_3166_1", "artist_ipi", "place_alias_type", "iso_3166_3", "label_alias_type", "artist_isni" WHERE "label"."id" = "label_isni"."label" AND "label"."area" = "area"."id" AND "label"."id" = "label_alias"."label" AND "area"."id" = "area_alias"."area" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "place"."area" AND "place"."id" = "place_alias"."place" AND "area"."id" = "country_area"."area" AND "label"."type" = "label_type"."id" AND "place"."type" = "place_type"."id" AND "area"."id" = "artist"."area" AND "area_alias"."type" = "area_alias_type"."id" AND "label"."id" = "release_label"."label" AND "area"."type" = "area_type"."id" AND "artist"."gender" = "gender"."id" AND "area"."id" = "iso_3166_1"."area" AND "artist"."id" = "artist_ipi"."artist" AND "place_alias"."type" = "place_alias_type"."id" AND "area"."id" = "iso_3166_3"."area" AND "label_alias"."type" = "label_alias_type"."id" AND "artist"."id" = "artist_isni"."artist";

