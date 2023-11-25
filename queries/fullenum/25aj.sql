SELECT * FROM "label_alias_type", "label_alias", "label", "area", "place", "area_type", "place_type", "artist", "gender", "area_alias", "artist_ipi", "place_alias", "iso_3166_3", "area_alias_type", "iso_3166_1", "artist_isni", "artist_credit_name", "artist_alias", "artist_alias_type", "country_area", "label_isni", "label_ipi", "label_type", "release_country", "place_alias_type" WHERE "label_alias_type"."id" = "label_alias"."type" AND "label_alias"."label" = "label"."id" AND "label"."area" = "area"."id" AND "area"."id" = "place"."area" AND "area"."type" = "area_type"."id" AND "place"."type" = "place_type"."id" AND "area"."id" = "artist"."area" AND "artist"."gender" = "gender"."id" AND "area"."id" = "area_alias"."area" AND "artist"."id" = "artist_ipi"."artist" AND "place"."id" = "place_alias"."place" AND "area"."id" = "iso_3166_3"."area" AND "area_alias"."type" = "area_alias_type"."id" AND "area"."id" = "iso_3166_1"."area" AND "artist"."id" = "artist_isni"."artist" AND "artist"."id" = "artist_credit_name"."artist" AND "artist"."id" = "artist_alias"."artist" AND "artist_alias"."type" = "artist_alias_type"."id" AND "area"."id" = "country_area"."area" AND "label"."id" = "label_isni"."label" AND "label"."id" = "label_ipi"."label" AND "label"."type" = "label_type"."id" AND "country_area"."area" = "release_country"."country" AND "place_alias"."type" = "place_alias_type"."id";
