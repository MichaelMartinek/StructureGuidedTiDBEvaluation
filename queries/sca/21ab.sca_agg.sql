SELECT min(area.id) FROM "country_area", "area", "iso_3166_3", "area_alias", "iso_3166_1", "area_alias_type", "area_type", "iso_3166_2", "release_country", "release", "release_packaging", "place", "place_alias", "release_status", "artist_credit", "track", "recording", "place_alias_type", "medium", "isrc", "medium_cdtoc" WHERE "country_area"."area" = "area"."id" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "area_alias"."area" AND "area"."id" = "iso_3166_1"."area" AND "area_alias"."type" = "area_alias_type"."id" AND "area"."type" = "area_type"."id" AND "area"."id" = "iso_3166_2"."area" AND "country_area"."area" = "release_country"."country" AND "release_country"."release" = "release"."id" AND "release"."packaging" = "release_packaging"."id" AND "area"."id" = "place"."area" AND "place"."id" = "place_alias"."place" AND "release"."status" = "release_status"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "track"."artist_credit" AND "track"."recording" = "recording"."id" AND "artist_credit"."id" = "recording"."artist_credit" AND "place_alias"."type" = "place_alias_type"."id" AND "release"."id" = "medium"."release" AND "track"."medium" = "medium"."id" AND "recording"."id" = "isrc"."recording" AND "medium"."id" = "medium_cdtoc"."medium";

