SELECT min(artist_alias.type) FROM "artist_alias_type", "artist_alias", "artist", "artist_type", "artist_isni", "artist_ipi", "area" WHERE "artist_alias_type"."id" = "artist_alias"."type" AND "artist_alias"."artist" = "artist"."id" AND "artist"."type" = "artist_type"."id" AND "artist"."id" = "artist_isni"."artist" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."area" = "area"."id";

