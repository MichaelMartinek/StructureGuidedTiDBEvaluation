SELECT min(release.release_group) FROM "release_group_secondary_type_join", "release_group", "release", "release_packaging", "language", "script" WHERE "release_group_secondary_type_join"."release_group" = "release_group"."id" AND "release_group"."id" = "release"."release_group" AND "release"."packaging" = "release_packaging"."id" AND "release"."language" = "language"."id" AND "release"."script" = "script"."id";
