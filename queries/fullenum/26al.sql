SELECT * FROM "release_country", "release", "script", "country_area", "language", "medium", "release_group", "release_group_secondary_type_join", "release_label", "work_language", "release_packaging", "release_group_primary_type", "artist_credit", "artist_credit_name", "artist", "area", "area_type", "place", "work", "release_unknown_country", "iso_3166_2", "artist_type", "work_alias", "artist_alias", "work_attribute", "artist_ipi" WHERE "release_country"."release" = "release"."id" AND "release"."script" = "script"."id" AND "release_country"."country" = "country_area"."area" AND "release"."language" = "language"."id" AND "release"."id" = "medium"."release" AND "release"."release_group" = "release_group"."id" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release"."id" = "release_label"."release" AND "language"."id" = "work_language"."language" AND "release"."packaging" = "release_packaging"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_group"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "artist_credit_name"."artist" = "artist"."id" AND "country_area"."area" = "area"."id" AND "area"."type" = "area_type"."id" AND "area"."id" = "place"."area" AND "work_language"."work" = "work"."id" AND "release"."id" = "release_unknown_country"."release" AND "area"."id" = "iso_3166_2"."area" AND "artist"."type" = "artist_type"."id" AND "work"."id" = "work_alias"."work" AND "artist"."id" = "artist_alias"."artist" AND "work"."id" = "work_attribute"."work" AND "artist"."id" = "artist_ipi"."artist";
