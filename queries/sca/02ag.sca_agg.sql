SELECT min(release.id) FROM "release_unknown_country", "release" WHERE "release_unknown_country"."release" = "release"."id";

