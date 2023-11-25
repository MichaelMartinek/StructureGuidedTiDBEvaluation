SELECT * FROM "language", "release", "release_country", "release_status", "medium", "artist_credit", "artist_credit_name", "medium_format", "work_language", "script", "release_packaging", "release_group", "release_group_secondary_type_join", "recording", "isrc", "release_group_primary_type", "country_area", "release_group_secondary_type", "artist", "area", "area_type", "release_label", "gender" WHERE "language"."id" = "release"."language" AND "release"."id" = "release_country"."release" AND "release"."status" = "release_status"."id" AND "release"."id" = "medium"."release" AND "release"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "medium"."format" = "medium_format"."id" AND "language"."id" = "work_language"."language" AND "release"."script" = "script"."id" AND "release"."packaging" = "release_packaging"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "artist_credit"."id" = "recording"."artist_credit" AND "recording"."id" = "isrc"."recording" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_country"."country" = "country_area"."area" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "artist_credit_name"."artist" = "artist"."id" AND "artist"."area" = "area"."id" AND "country_area"."area" = "area"."id" AND "area"."type" = "area_type"."id" AND "release"."id" = "release_label"."release" AND "artist"."gender" = "gender"."id";
