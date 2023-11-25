SELECT * FROM "release_group_primary_type", "release_group", "artist_credit", "release_group_secondary_type_join", "recording", "artist_credit_name", "release_group_secondary_type", "release", "track", "script", "release_packaging", "medium", "release_country", "release_status", "release_unknown_country", "release_label", "language", "country_area", "isrc", "medium_cdtoc", "label", "label_isni", "area" WHERE "release_group_primary_type"."id" = "release_group"."type" AND "release_group"."artist_credit" = "artist_credit"."id" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "artist_credit"."id" = "recording"."artist_credit" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "artist_credit"."id" = "release"."artist_credit" AND "artist_credit"."id" = "track"."artist_credit" AND "recording"."id" = "track"."recording" AND "release"."script" = "script"."id" AND "release"."packaging" = "release_packaging"."id" AND "track"."medium" = "medium"."id" AND "release"."id" = "medium"."release" AND "release"."id" = "release_country"."release" AND "release"."status" = "release_status"."id" AND "release"."id" = "release_unknown_country"."release" AND "release"."id" = "release_label"."release" AND "release"."language" = "language"."id" AND "release_country"."country" = "country_area"."area" AND "recording"."id" = "isrc"."recording" AND "medium"."id" = "medium_cdtoc"."medium" AND "release_label"."label" = "label"."id" AND "label"."id" = "label_isni"."label" AND "country_area"."area" = "area"."id";
