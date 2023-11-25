SELECT min(artist.id) FROM "artist_credit_name", "artist", "artist_ipi", "artist_isni", "area", "artist_credit", "track", "area_type", "release_group", "release", "script", "country_area" WHERE "artist_credit_name"."artist" = "artist"."id" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."id" = "artist_isni"."artist" AND "artist"."area" = "area"."id" AND "artist_credit_name"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "track"."artist_credit" AND "area"."type" = "area_type"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "artist_credit"."id" = "release"."artist_credit" AND "release_group"."id" = "release"."release_group" AND "release"."script" = "script"."id" AND "area"."id" = "country_area"."area";

