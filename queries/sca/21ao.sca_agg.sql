SELECT min(iswc.work) FROM "work", "work_alias", "work_alias_type", "work_language", "language", "iswc", "work_attribute", "release", "artist_credit", "release_unknown_country", "release_group", "script", "medium", "release_country", "medium_cdtoc", "release_status", "release_group_primary_type", "artist_credit_name", "recording", "artist", "cdtoc" WHERE "work"."id" = "work_alias"."work" AND "work_alias"."type" = "work_alias_type"."id" AND "work"."id" = "work_language"."work" AND "work_language"."language" = "language"."id" AND "work"."id" = "iswc"."work" AND "work"."id" = "work_attribute"."work" AND "language"."id" = "release"."language" AND "release"."artist_credit" = "artist_credit"."id" AND "release"."id" = "release_unknown_country"."release" AND "artist_credit"."id" = "release_group"."artist_credit" AND "release"."release_group" = "release_group"."id" AND "release"."script" = "script"."id" AND "release"."id" = "medium"."release" AND "release"."id" = "release_country"."release" AND "medium"."id" = "medium_cdtoc"."medium" AND "release"."status" = "release_status"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "artist_credit"."id" = "recording"."artist_credit" AND "artist_credit_name"."artist" = "artist"."id" AND "medium_cdtoc"."cdtoc" = "cdtoc"."id";

