SELECT min(release_group.type) FROM "release_group_primary_type", "release_group", "release_group_secondary_type_join", "artist_credit", "artist_credit_name", "release", "release_status", "release_country", "release_unknown_country", "release_label", "script", "artist", "area" WHERE "release_group_primary_type"."id" = "release_group"."type" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release_group"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "release_group"."id" = "release"."release_group" AND "release"."status" = "release_status"."id" AND "release"."id" = "release_country"."release" AND "release"."id" = "release_unknown_country"."release" AND "release"."id" = "release_label"."release" AND "release"."script" = "script"."id" AND "artist_credit_name"."artist" = "artist"."id" AND "artist"."area" = "area"."id";
