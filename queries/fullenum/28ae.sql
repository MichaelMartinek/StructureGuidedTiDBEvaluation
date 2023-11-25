SELECT * FROM "work_type", "work", "work_language", "work_attribute", "work_alias", "work_attribute_type", "language", "work_attribute_type_allowed_value", "iswc", "release", "release_unknown_country", "artist_credit", "artist_credit_name", "recording", "artist", "release_status", "release_label", "artist_type", "work_alias_type", "release_country", "isrc", "gender", "artist_alias", "script", "artist_isni", "release_packaging", "area", "area_alias" WHERE "work_type"."id" = "work"."type" AND "work"."id" = "work_language"."work" AND "work"."id" = "work_attribute"."work" AND "work"."id" = "work_alias"."work" AND "work_attribute"."work_attribute_type" = "work_attribute_type"."id" AND "work_language"."language" = "language"."id" AND "work_attribute_type"."id" = "work_attribute_type_allowed_value"."work_attribute_type" AND "work"."id" = "iswc"."work" AND "language"."id" = "release"."language" AND "release"."id" = "release_unknown_country"."release" AND "release"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "artist_credit"."id" = "recording"."artist_credit" AND "artist_credit_name"."artist" = "artist"."id" AND "release"."status" = "release_status"."id" AND "release"."id" = "release_label"."release" AND "artist"."type" = "artist_type"."id" AND "work_alias"."type" = "work_alias_type"."id" AND "release"."id" = "release_country"."release" AND "recording"."id" = "isrc"."recording" AND "artist"."gender" = "gender"."id" AND "artist"."id" = "artist_alias"."artist" AND "release"."script" = "script"."id" AND "artist"."id" = "artist_isni"."artist" AND "release"."packaging" = "release_packaging"."id" AND "artist"."area" = "area"."id" AND "area"."id" = "area_alias"."area";