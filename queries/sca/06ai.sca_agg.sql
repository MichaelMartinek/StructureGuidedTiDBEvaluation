SELECT min(artist.id) FROM "artist_isni", "artist", "area", "artist_type", "area_alias", "artist_credit_name" WHERE "artist_isni"."artist" = "artist"."id" AND "artist"."area" = "area"."id" AND "artist"."type" = "artist_type"."id" AND "area"."id" = "area_alias"."area" AND "artist"."id" = "artist_credit_name"."artist";

