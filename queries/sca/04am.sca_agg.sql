SELECT min(medium.release) FROM "medium", "release", "release_group", "release_status" WHERE "medium"."release" = "release"."id" AND "release"."release_group" = "release_group"."id" AND "release"."status" = "release_status"."id";

