SELECT min(release_group.type) FROM "release_group_primary_type", "release_group", "release_group_secondary_type_join" WHERE "release_group_primary_type"."id" = "release_group"."type" AND "release_group"."id" = "release_group_secondary_type_join"."release_group";

