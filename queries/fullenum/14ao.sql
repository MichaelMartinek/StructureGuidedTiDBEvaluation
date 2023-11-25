SELECT * FROM "recording", "artist_credit", "release_group", "release", "script", "artist_credit_name", "release_unknown_country", "artist", "release_group_secondary_type_join", "release_packaging", "artist_alias", "release_group_primary_type", "gender", "language" WHERE "recording"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "artist_credit"."id" = "release"."artist_credit" AND "release_group"."id" = "release"."release_group" AND "release"."script" = "script"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "release"."id" = "release_unknown_country"."release" AND "artist_credit_name"."artist" = "artist"."id" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release"."packaging" = "release_packaging"."id" AND "artist"."id" = "artist_alias"."artist" AND "release_group"."type" = "release_group_primary_type"."id" AND "artist"."gender" = "gender"."id" AND "release"."language" = "language"."id";
