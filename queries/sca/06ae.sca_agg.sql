SELECT min(artist_alias.type) FROM "artist_alias", "artist_alias_type", "artist", "gender", "artist_isni", "artist_type" WHERE "artist_alias"."type" = "artist_alias_type"."id" AND "artist_alias"."artist" = "artist"."id" AND "artist"."gender" = "gender"."id" AND "artist"."id" = "artist_isni"."artist" AND "artist"."type" = "artist_type"."id";

