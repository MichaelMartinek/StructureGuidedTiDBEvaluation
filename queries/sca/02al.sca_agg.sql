SELECT min(artist_alias.type) FROM "artist_alias_type", "artist_alias" WHERE "artist_alias_type"."id" = "artist_alias"."type";

