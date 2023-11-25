SELECT min(place_alias.type) FROM "place_alias", "place_alias_type", "place", "area", "area_type", "label", "artist", "iso_3166_2", "label_ipi", "label_type", "iso_3166_3", "place_type", "country_area", "label_alias", "artist_alias", "artist_credit_name", "artist_ipi", "gender", "artist_type", "label_alias_type", "iso_3166_1", "artist_isni", "label_isni", "area_alias", "release_label", "release_country", "artist_credit" WHERE "place_alias"."type" = "place_alias_type"."id" AND "place_alias"."place" = "place"."id" AND "place"."area" = "area"."id" AND "area"."type" = "area_type"."id" AND "area"."id" = "label"."area" AND "area"."id" = "artist"."area" AND "area"."id" = "iso_3166_2"."area" AND "label"."id" = "label_ipi"."label" AND "label"."type" = "label_type"."id" AND "area"."id" = "iso_3166_3"."area" AND "place"."type" = "place_type"."id" AND "area"."id" = "country_area"."area" AND "label"."id" = "label_alias"."label" AND "artist"."id" = "artist_alias"."artist" AND "artist"."id" = "artist_credit_name"."artist" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."gender" = "gender"."id" AND "artist"."type" = "artist_type"."id" AND "label_alias"."type" = "label_alias_type"."id" AND "area"."id" = "iso_3166_1"."area" AND "artist"."id" = "artist_isni"."artist" AND "label"."id" = "label_isni"."label" AND "area"."id" = "area_alias"."area" AND "label"."id" = "release_label"."label" AND "country_area"."area" = "release_country"."country" AND "artist_credit_name"."artist_credit" = "artist_credit"."id";
