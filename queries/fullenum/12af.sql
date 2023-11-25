SELECT * FROM "release_group", "release", "release_group_primary_type", "release_unknown_country", "medium", "release_group_secondary_type_join", "medium_format", "release_status", "artist_credit", "release_group_secondary_type", "track", "artist_credit_name" WHERE "release_group"."id" = "release"."release_group" AND "release_group"."type" = "release_group_primary_type"."id" AND "release"."id" = "release_unknown_country"."release" AND "release"."id" = "medium"."release" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "medium"."format" = "medium_format"."id" AND "release"."status" = "release_status"."id" AND "release_group"."artist_credit" = "artist_credit"."id" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "medium"."id" = "track"."medium" AND "artist_credit"."id" = "artist_credit_name"."artist_credit";
