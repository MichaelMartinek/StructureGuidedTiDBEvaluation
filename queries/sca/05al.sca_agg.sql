SELECT min(artist.id) FROM "artist", "artist_ipi", "artist_type", "artist_isni", "artist_alias" WHERE "artist"."id" = "artist_ipi"."artist" AND "artist"."type" = "artist_type"."id" AND "artist"."id" = "artist_isni"."artist" AND "artist"."id" = "artist_alias"."artist";

