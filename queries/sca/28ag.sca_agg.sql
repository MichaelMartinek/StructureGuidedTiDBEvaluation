SELECT min(area.id) FROM "country_area", "release_country", "release", "language", "release_label", "release_group", "label", "label_ipi", "release_status", "label_type", "area", "release_group_primary_type", "artist_credit", "place", "track", "release_packaging", "place_alias", "iso_3166_1", "iso_3166_3", "release_unknown_country", "recording", "area_alias", "artist_credit_name", "place_type", "isrc", "release_group_secondary_type_join", "place_alias_type", "artist" WHERE "country_area"."area" = "release_country"."country" AND "release_country"."release" = "release"."id" AND "release"."language" = "language"."id" AND "release"."id" = "release_label"."release" AND "release"."release_group" = "release_group"."id" AND "release_label"."label" = "label"."id" AND "label"."id" = "label_ipi"."label" AND "release"."status" = "release_status"."id" AND "label"."type" = "label_type"."id" AND "country_area"."area" = "area"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "release_group"."artist_credit" = "artist_credit"."id" AND "area"."id" = "place"."area" AND "artist_credit"."id" = "track"."artist_credit" AND "release"."packaging" = "release_packaging"."id" AND "place"."id" = "place_alias"."place" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "iso_3166_3"."area" AND "release"."id" = "release_unknown_country"."release" AND "track"."recording" = "recording"."id" AND "area"."id" = "area_alias"."area" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "place"."type" = "place_type"."id" AND "recording"."id" = "isrc"."recording" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "place_alias"."type" = "place_alias_type"."id" AND "area"."id" = "artist"."area" AND "artist_credit_name"."artist" = "artist"."id";

