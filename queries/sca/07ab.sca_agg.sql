SELECT min(artist.id) FROM "artist_credit_name", "artist", "artist_alias", "gender", "area", "artist_ipi", "artist_alias_type" WHERE "artist_credit_name"."artist" = "artist"."id" AND "artist"."id" = "artist_alias"."artist" AND "artist"."gender" = "gender"."id" AND "artist"."area" = "area"."id" AND "artist"."id" = "artist_ipi"."artist" AND "artist_alias"."type" = "artist_alias_type"."id";

