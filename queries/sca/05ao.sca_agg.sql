SELECT min(release.id) FROM "release_country", "release", "release_packaging", "language", "release_unknown_country" WHERE "release_country"."release" = "release"."id" AND "release"."packaging" = "release_packaging"."id" AND "release"."language" = "language"."id" AND "release"."id" = "release_unknown_country"."release";

