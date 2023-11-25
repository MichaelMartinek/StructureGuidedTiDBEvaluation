SELECT * FROM "isrc", "recording", "track", "artist_credit", "release_group", "release_group_primary_type", "release_group_secondary_type_join", "artist_credit_name", "release_group_secondary_type", "release", "script", "release_packaging", "release_unknown_country" WHERE "isrc"."recording" = "recording"."id" AND "recording"."id" = "track"."recording" AND "track"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "release_group"."id" = "release"."release_group" AND "release"."script" = "script"."id" AND "release"."packaging" = "release_packaging"."id" AND "release"."id" = "release_unknown_country"."release";
