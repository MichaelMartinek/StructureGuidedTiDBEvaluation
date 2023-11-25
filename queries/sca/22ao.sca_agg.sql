SELECT min(area.type) FROM "area_type", "area", "label", "label_ipi", "iso_3166_1", "area_alias", "label_alias", "release_label", "label_alias_type", "iso_3166_2", "label_isni", "place", "country_area", "iso_3166_3", "artist", "place_alias", "place_alias_type", "gender", "artist_type", "release_country", "artist_credit_name", "artist_ipi" WHERE "area_type"."id" = "area"."type" AND "area"."id" = "label"."area" AND "label"."id" = "label_ipi"."label" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "area_alias"."area" AND "label"."id" = "label_alias"."label" AND "label"."id" = "release_label"."label" AND "label_alias"."type" = "label_alias_type"."id" AND "area"."id" = "iso_3166_2"."area" AND "label"."id" = "label_isni"."label" AND "area"."id" = "place"."area" AND "area"."id" = "country_area"."area" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "artist"."area" AND "place"."id" = "place_alias"."place" AND "place_alias"."type" = "place_alias_type"."id" AND "artist"."gender" = "gender"."id" AND "artist"."type" = "artist_type"."id" AND "country_area"."area" = "release_country"."country" AND "artist"."id" = "artist_credit_name"."artist" AND "artist"."id" = "artist_ipi"."artist";
