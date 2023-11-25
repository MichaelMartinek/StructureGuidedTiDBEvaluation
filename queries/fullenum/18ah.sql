SELECT * FROM "release_status", "release", "release_packaging", "release_label", "language", "work_language", "script", "medium", "artist_credit", "artist_credit_name", "release_unknown_country", "work", "release_country", "country_area", "work_alias", "iswc", "recording", "medium_format" WHERE "release_status"."id" = "release"."status" AND "release"."packaging" = "release_packaging"."id" AND "release"."id" = "release_label"."release" AND "release"."language" = "language"."id" AND "language"."id" = "work_language"."language" AND "release"."script" = "script"."id" AND "release"."id" = "medium"."release" AND "release"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "release"."id" = "release_unknown_country"."release" AND "work_language"."work" = "work"."id" AND "release"."id" = "release_country"."release" AND "release_country"."country" = "country_area"."area" AND "work"."id" = "work_alias"."work" AND "work"."id" = "iswc"."work" AND "artist_credit"."id" = "recording"."artist_credit" AND "medium"."format" = "medium_format"."id";
