SELECT min(artist.type) FROM "artist_type", "artist", "area", "area_type", "artist_ipi", "iso_3166_1", "country_area" WHERE "artist_type"."id" = "artist"."type" AND "artist"."area" = "area"."id" AND "area"."type" = "area_type"."id" AND "artist"."id" = "artist_ipi"."artist" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "country_area"."area";

