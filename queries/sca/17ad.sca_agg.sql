SELECT min(artist.id) FROM "artist_alias", "artist", "artist_ipi", "gender", "artist_credit_name", "area", "artist_alias_type", "area_type", "artist_credit", "place", "place_type", "artist_type", "release_group", "release_group_primary_type", "release", "label", "recording" WHERE "artist_alias"."artist" = "artist"."id" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."gender" = "gender"."id" AND "artist"."id" = "artist_credit_name"."artist" AND "artist"."area" = "area"."id" AND "artist_alias"."type" = "artist_alias_type"."id" AND "area"."type" = "area_type"."id" AND "artist_credit_name"."artist_credit" = "artist_credit"."id" AND "area"."id" = "place"."area" AND "place"."type" = "place_type"."id" AND "artist"."type" = "artist_type"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_group"."id" = "release"."release_group" AND "artist_credit"."id" = "release"."artist_credit" AND "area"."id" = "label"."area" AND "artist_credit"."id" = "recording"."artist_credit";

