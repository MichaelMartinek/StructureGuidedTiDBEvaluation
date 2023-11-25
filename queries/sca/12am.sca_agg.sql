SELECT min(work_alias.type) FROM "work_alias_type", "work_alias", "work", "work_attribute", "work_type", "work_language", "language", "release", "release_country", "work_attribute_type", "release_packaging", "iswc", "artist_credit" WHERE "work_alias_type"."id" = "work_alias"."type" AND "work_alias"."work" = "work"."id" AND "work"."id" = "work_attribute"."work" AND "work"."type" = "work_type"."id" AND "work"."id" = "work_language"."work" AND "work_language"."language" = "language"."id" AND "language"."id" = "release"."language" AND "release"."id" = "release_country"."release" AND "work_attribute"."work_attribute_type" = "work_attribute_type"."id" AND "release"."packaging" = "release_packaging"."id" AND "work"."id" = "iswc"."work" AND "release"."artist_credit" = "artist_credit"."id";

