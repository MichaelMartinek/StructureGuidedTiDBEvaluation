SELECT min(artist.gender) FROM "gender", "artist", "artist_alias", "area", "artist_type", "area_alias", "label", "label_type", "artist_ipi", "iso_3166_1", "label_isni", "release_label", "area_type", "artist_credit_name", "artist_alias_type", "label_ipi", "iso_3166_3", "iso_3166_2", "label_alias", "place", "area_alias_type", "artist_isni", "country_area", "release_country", "label_alias_type", "place_type" WHERE "gender"."id" = "artist"."gender" AND "artist"."id" = "artist_alias"."artist" AND "artist"."area" = "area"."id" AND "artist"."type" = "artist_type"."id" AND "area"."id" = "area_alias"."area" AND "area"."id" = "label"."area" AND "label"."type" = "label_type"."id" AND "artist"."id" = "artist_ipi"."artist" AND "area"."id" = "iso_3166_1"."area" AND "label"."id" = "label_isni"."label" AND "label"."id" = "release_label"."label" AND "area"."type" = "area_type"."id" AND "artist"."id" = "artist_credit_name"."artist" AND "artist_alias"."type" = "artist_alias_type"."id" AND "label"."id" = "label_ipi"."label" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "iso_3166_2"."area" AND "label"."id" = "label_alias"."label" AND "area"."id" = "place"."area" AND "area_alias"."type" = "area_alias_type"."id" AND "artist"."id" = "artist_isni"."artist" AND "area"."id" = "country_area"."area" AND "country_area"."area" = "release_country"."country" AND "label_alias"."type" = "label_alias_type"."id" AND "place"."type" = "place_type"."id";

