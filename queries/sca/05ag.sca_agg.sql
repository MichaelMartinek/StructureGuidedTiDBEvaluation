SELECT min(release_group.type) FROM "release_group_primary_type", "release_group", "release", "artist_credit", "release_country" WHERE "release_group_primary_type"."id" = "release_group"."type" AND "release_group"."id" = "release"."release_group" AND "release_group"."artist_credit" = "artist_credit"."id" AND "release"."id" = "release_country"."release";

