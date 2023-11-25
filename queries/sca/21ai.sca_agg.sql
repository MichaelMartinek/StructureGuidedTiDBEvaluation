SELECT min(place.id) FROM "place", "place_alias", "place_alias_type", "place_type", "area", "iso_3166_1", "artist", "area_type", "label", "artist_ipi", "area_alias", "area_alias_type", "artist_credit_name", "release_label", "gender", "artist_type", "iso_3166_2", "label_isni", "label_type", "label_ipi", "artist_alias" WHERE "place"."id" = "place_alias"."place" AND "place_alias"."type" = "place_alias_type"."id" AND "place"."type" = "place_type"."id" AND "place"."area" = "area"."id" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "artist"."area" AND "area"."type" = "area_type"."id" AND "area"."id" = "label"."area" AND "artist"."id" = "artist_ipi"."artist" AND "area"."id" = "area_alias"."area" AND "area_alias"."type" = "area_alias_type"."id" AND "artist"."id" = "artist_credit_name"."artist" AND "label"."id" = "release_label"."label" AND "artist"."gender" = "gender"."id" AND "artist"."type" = "artist_type"."id" AND "area"."id" = "iso_3166_2"."area" AND "label"."id" = "label_isni"."label" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_ipi"."label" AND "artist"."id" = "artist_alias"."artist";

