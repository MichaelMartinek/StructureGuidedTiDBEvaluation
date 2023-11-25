SELECT min(artist_credit.id) FROM "artist_credit", "release_group", "artist_credit_name", "release_group_secondary_type_join", "artist", "artist_ipi", "release_group_primary_type", "area", "area_type", "artist_alias" WHERE "artist_credit"."id" = "release_group"."artist_credit" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "artist_credit_name"."artist" = "artist"."id" AND "artist"."id" = "artist_ipi"."artist" AND "release_group"."type" = "release_group_primary_type"."id" AND "artist"."area" = "area"."id" AND "area"."type" = "area_type"."id" AND "artist"."id" = "artist_alias"."artist";

