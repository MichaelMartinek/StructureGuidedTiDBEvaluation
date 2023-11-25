SELECT min(artist.gender) FROM "gender", "artist", "area", "artist_isni", "area_alias", "area_alias_type", "country_area", "label", "artist_ipi", "iso_3166_2", "artist_type", "iso_3166_1", "release_label", "artist_credit_name", "iso_3166_3", "release_country", "label_type" WHERE "gender"."id" = "artist"."gender" AND "artist"."area" = "area"."id" AND "artist"."id" = "artist_isni"."artist" AND "area"."id" = "area_alias"."area" AND "area_alias"."type" = "area_alias_type"."id" AND "area"."id" = "country_area"."area" AND "area"."id" = "label"."area" AND "artist"."id" = "artist_ipi"."artist" AND "area"."id" = "iso_3166_2"."area" AND "artist"."type" = "artist_type"."id" AND "area"."id" = "iso_3166_1"."area" AND "label"."id" = "release_label"."label" AND "artist"."id" = "artist_credit_name"."artist" AND "area"."id" = "iso_3166_3"."area" AND "country_area"."area" = "release_country"."country" AND "label"."type" = "label_type"."id";

