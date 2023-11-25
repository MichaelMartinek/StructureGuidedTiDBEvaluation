SELECT min(release_group_secondary_type.id) FROM "release_group_secondary_type_join", "release_group_secondary_type", "release_group", "release_group_primary_type", "release", "release_unknown_country", "script", "release_country", "medium", "release_packaging" WHERE "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "release_group_secondary_type_join"."release_group" = "release_group"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_group"."id" = "release"."release_group" AND "release"."id" = "release_unknown_country"."release" AND "release"."script" = "script"."id" AND "release"."id" = "release_country"."release" AND "release"."id" = "medium"."release" AND "release"."packaging" = "release_packaging"."id";
