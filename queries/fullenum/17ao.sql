SELECT * FROM "iso_3166_2", "area", "iso_3166_3", "iso_3166_1", "label", "label_isni", "artist", "label_type", "label_ipi", "country_area", "area_type", "release_country", "gender", "artist_credit_name", "label_alias", "area_alias", "area_alias_type" WHERE "iso_3166_2"."area" = "area"."id" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "label"."area" AND "label"."id" = "label_isni"."label" AND "area"."id" = "artist"."area" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_ipi"."label" AND "area"."id" = "country_area"."area" AND "area"."type" = "area_type"."id" AND "country_area"."area" = "release_country"."country" AND "artist"."gender" = "gender"."id" AND "artist"."id" = "artist_credit_name"."artist" AND "label"."id" = "label_alias"."label" AND "area"."id" = "area_alias"."area" AND "area_alias"."type" = "area_alias_type"."id";
