SELECT min(release_group.type) FROM "release_group_primary_type", "release_group", "artist_credit", "recording" WHERE "release_group_primary_type"."id" = "release_group"."type" AND "release_group"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "recording"."artist_credit";

