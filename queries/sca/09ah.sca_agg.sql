SELECT min(artist.id) FROM "artist", "artist_ipi", "artist_alias", "artist_isni", "artist_credit_name", "area", "gender", "artist_alias_type", "iso_3166_2" WHERE "artist"."id" = "artist_ipi"."artist" AND "artist"."id" = "artist_alias"."artist" AND "artist"."id" = "artist_isni"."artist" AND "artist"."id" = "artist_credit_name"."artist" AND "artist"."area" = "area"."id" AND "artist"."gender" = "gender"."id" AND "artist_alias"."type" = "artist_alias_type"."id" AND "area"."id" = "iso_3166_2"."area";

