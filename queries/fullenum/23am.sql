SELECT * FROM "area_alias_type", "area_alias", "area", "place", "area_type", "artist", "country_area", "artist_isni", "release_country", "place_alias", "artist_type", "artist_ipi", "place_alias_type", "release", "medium", "iso_3166_3", "release_packaging", "artist_alias", "language", "place_type", "iso_3166_2", "label", "work_language" WHERE "area_alias_type"."id" = "area_alias"."type" AND "area_alias"."area" = "area"."id" AND "area"."id" = "place"."area" AND "area"."type" = "area_type"."id" AND "area"."id" = "artist"."area" AND "area"."id" = "country_area"."area" AND "artist"."id" = "artist_isni"."artist" AND "country_area"."area" = "release_country"."country" AND "place"."id" = "place_alias"."place" AND "artist"."type" = "artist_type"."id" AND "artist"."id" = "artist_ipi"."artist" AND "place_alias"."type" = "place_alias_type"."id" AND "release_country"."release" = "release"."id" AND "release"."id" = "medium"."release" AND "area"."id" = "iso_3166_3"."area" AND "release"."packaging" = "release_packaging"."id" AND "artist"."id" = "artist_alias"."artist" AND "release"."language" = "language"."id" AND "place"."type" = "place_type"."id" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "label"."area" AND "language"."id" = "work_language"."language";
