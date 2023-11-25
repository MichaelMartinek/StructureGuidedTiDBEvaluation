SELECT * FROM "language", "release", "release_status", "release_country", "release_unknown_country", "artist_credit", "release_packaging", "release_label", "script", "work_language" WHERE "language"."id" = "release"."language" AND "release"."status" = "release_status"."id" AND "release"."id" = "release_country"."release" AND "release"."id" = "release_unknown_country"."release" AND "release"."artist_credit" = "artist_credit"."id" AND "release"."packaging" = "release_packaging"."id" AND "release"."id" = "release_label"."release" AND "release"."script" = "script"."id" AND "language"."id" = "work_language"."language";
