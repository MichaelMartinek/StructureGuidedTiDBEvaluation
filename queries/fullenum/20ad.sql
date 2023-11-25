SELECT * FROM "release_country", "release", "country_area", "area", "release_group", "label", "iso_3166_1", "place", "label_isni", "script", "area_type", "language", "work_language", "place_alias", "release_group_secondary_type_join", "label_type", "release_status", "work", "release_unknown_country", "place_alias_type" WHERE "release_country"."release" = "release"."id" AND "release_country"."country" = "country_area"."area" AND "country_area"."area" = "area"."id" AND "release"."release_group" = "release_group"."id" AND "area"."id" = "label"."area" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "place"."area" AND "label"."id" = "label_isni"."label" AND "release"."script" = "script"."id" AND "area"."type" = "area_type"."id" AND "release"."language" = "language"."id" AND "language"."id" = "work_language"."language" AND "place"."id" = "place_alias"."place" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "label"."type" = "label_type"."id" AND "release"."status" = "release_status"."id" AND "work_language"."work" = "work"."id" AND "release"."id" = "release_unknown_country"."release" AND "place_alias"."type" = "place_alias_type"."id";
