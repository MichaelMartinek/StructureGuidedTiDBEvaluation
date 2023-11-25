SELECT * FROM "artist_type", "artist", "artist_ipi", "artist_alias", "gender", "area", "place", "area_alias", "area_type", "place_type", "artist_alias_type", "country_area", "iso_3166_2", "place_alias", "area_alias_type", "release_country", "place_alias_type", "iso_3166_1", "release", "release_label", "artist_isni", "release_group", "release_unknown_country", "release_status", "release_packaging", "medium", "release_group_primary_type", "artist_credit_name", "track", "script" WHERE "artist_type"."id" = "artist"."type" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."id" = "artist_alias"."artist" AND "artist"."gender" = "gender"."id" AND "artist"."area" = "area"."id" AND "area"."id" = "place"."area" AND "area"."id" = "area_alias"."area" AND "area"."type" = "area_type"."id" AND "place"."type" = "place_type"."id" AND "artist_alias"."type" = "artist_alias_type"."id" AND "area"."id" = "country_area"."area" AND "area"."id" = "iso_3166_2"."area" AND "place"."id" = "place_alias"."place" AND "area_alias"."type" = "area_alias_type"."id" AND "country_area"."area" = "release_country"."country" AND "place_alias"."type" = "place_alias_type"."id" AND "area"."id" = "iso_3166_1"."area" AND "release_country"."release" = "release"."id" AND "release"."id" = "release_label"."release" AND "artist"."id" = "artist_isni"."artist" AND "release"."release_group" = "release_group"."id" AND "release"."id" = "release_unknown_country"."release" AND "release"."status" = "release_status"."id" AND "release"."packaging" = "release_packaging"."id" AND "release"."id" = "medium"."release" AND "release_group"."type" = "release_group_primary_type"."id" AND "artist"."id" = "artist_credit_name"."artist" AND "medium"."id" = "track"."medium" AND "release"."script" = "script"."id";
