SELECT min(release.script) FROM "script", "release", "release_status", "artist_credit", "medium", "release_label", "release_unknown_country" WHERE "script"."id" = "release"."script" AND "release"."status" = "release_status"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "release"."id" = "medium"."release" AND "release"."id" = "release_label"."release" AND "release"."id" = "release_unknown_country"."release";
