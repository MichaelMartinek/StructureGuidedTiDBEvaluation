SELECT min(artist.id) FROM "artist_isni", "artist", "artist_type", "area", "country_area" WHERE "artist_isni"."artist" = "artist"."id" AND "artist"."type" = "artist_type"."id" AND "artist"."area" = "area"."id" AND "area"."id" = "country_area"."area";

