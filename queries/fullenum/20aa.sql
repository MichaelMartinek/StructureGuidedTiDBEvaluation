SELECT * FROM "artist_credit_name", "artist_credit", "artist", "artist_ipi", "artist_alias", "artist_isni", "artist_alias_type", "release_group", "area", "place", "artist_type", "release_group_primary_type", "area_alias", "iso_3166_1", "release", "place_alias", "iso_3166_3", "release_packaging", "track", "medium" WHERE "artist_credit_name"."artist_credit" = "artist_credit"."id" AND "artist_credit_name"."artist" = "artist"."id" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."id" = "artist_alias"."artist" AND "artist"."id" = "artist_isni"."artist" AND "artist_alias"."type" = "artist_alias_type"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "artist"."area" = "area"."id" AND "area"."id" = "place"."area" AND "artist"."type" = "artist_type"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "area"."id" = "area_alias"."area" AND "area"."id" = "iso_3166_1"."area" AND "release_group"."id" = "release"."release_group" AND "place"."id" = "place_alias"."place" AND "area"."id" = "iso_3166_3"."area" AND "release"."packaging" = "release_packaging"."id" AND "artist_credit"."id" = "track"."artist_credit" AND "release"."id" = "medium"."release";
