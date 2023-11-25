SELECT * FROM "gender", "artist", "artist_ipi", "artist_isni", "artist_type", "artist_alias", "area", "iso_3166_2", "area_alias", "area_type", "place", "area_alias_type", "iso_3166_3", "country_area", "place_type", "iso_3166_1" WHERE "gender"."id" = "artist"."gender" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."id" = "artist_isni"."artist" AND "artist"."type" = "artist_type"."id" AND "artist"."id" = "artist_alias"."artist" AND "artist"."area" = "area"."id" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "area_alias"."area" AND "area"."type" = "area_type"."id" AND "area"."id" = "place"."area" AND "area_alias"."type" = "area_alias_type"."id" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "country_area"."area" AND "place"."type" = "place_type"."id" AND "area"."id" = "iso_3166_1"."area";