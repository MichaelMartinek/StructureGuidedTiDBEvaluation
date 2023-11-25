SELECT min(place.type) FROM "place_type", "place", "area", "iso_3166_3", "place_alias", "area_alias", "iso_3166_2", "country_area", "artist", "artist_type", "label", "release_country", "area_alias_type" WHERE "place_type"."id" = "place"."type" AND "place"."area" = "area"."id" AND "area"."id" = "iso_3166_3"."area" AND "place"."id" = "place_alias"."place" AND "area"."id" = "area_alias"."area" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "country_area"."area" AND "area"."id" = "artist"."area" AND "artist"."type" = "artist_type"."id" AND "area"."id" = "label"."area" AND "country_area"."area" = "release_country"."country" AND "area_alias"."type" = "area_alias_type"."id";

