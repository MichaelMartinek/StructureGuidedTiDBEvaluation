SELECT * FROM "language", "work_language", "work", "work_attribute", "release", "release_label", "release_group", "artist_credit", "label", "label_alias", "release_group_secondary_type_join", "work_alias", "release_unknown_country", "release_packaging" WHERE "language"."id" = "work_language"."language" AND "work_language"."work" = "work"."id" AND "work"."id" = "work_attribute"."work" AND "language"."id" = "release"."language" AND "release"."id" = "release_label"."release" AND "release"."release_group" = "release_group"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "release_group"."artist_credit" = "artist_credit"."id" AND "release_label"."label" = "label"."id" AND "label"."id" = "label_alias"."label" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "work"."id" = "work_alias"."work" AND "release"."id" = "release_unknown_country"."release" AND "release"."packaging" = "release_packaging"."id";
