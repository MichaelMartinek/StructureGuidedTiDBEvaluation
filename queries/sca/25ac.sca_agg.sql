SELECT min(place_alias.type) FROM "place_alias_type", "place_alias", "place", "place_type", "area", "label", "area_alias", "label_isni", "iso_3166_3", "label_ipi", "country_area", "release_country", "release", "label_alias", "artist", "artist_type", "iso_3166_1", "medium", "script", "iso_3166_2", "release_group", "release_label", "gender", "track", "release_status" WHERE "place_alias_type"."id" = "place_alias"."type" AND "place_alias"."place" = "place"."id" AND "place"."type" = "place_type"."id" AND "place"."area" = "area"."id" AND "area"."id" = "label"."area" AND "area"."id" = "area_alias"."area" AND "label"."id" = "label_isni"."label" AND "area"."id" = "iso_3166_3"."area" AND "label"."id" = "label_ipi"."label" AND "area"."id" = "country_area"."area" AND "country_area"."area" = "release_country"."country" AND "release_country"."release" = "release"."id" AND "label"."id" = "label_alias"."label" AND "area"."id" = "artist"."area" AND "artist"."type" = "artist_type"."id" AND "area"."id" = "iso_3166_1"."area" AND "release"."id" = "medium"."release" AND "release"."script" = "script"."id" AND "area"."id" = "iso_3166_2"."area" AND "release"."release_group" = "release_group"."id" AND "release"."id" = "release_label"."release" AND "artist"."gender" = "gender"."id" AND "medium"."id" = "track"."medium" AND "release"."status" = "release_status"."id";
