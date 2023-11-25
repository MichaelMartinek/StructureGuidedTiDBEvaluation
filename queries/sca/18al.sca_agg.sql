SELECT min(place_alias.type) FROM "place_alias_type", "place_alias", "place", "area", "area_alias", "iso_3166_2", "iso_3166_3", "place_type", "area_alias_type", "artist", "label", "artist_alias", "country_area", "area_type", "gender", "artist_isni", "label_isni", "label_type" WHERE "place_alias_type"."id" = "place_alias"."type" AND "place_alias"."place" = "place"."id" AND "place"."area" = "area"."id" AND "area"."id" = "area_alias"."area" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "iso_3166_3"."area" AND "place"."type" = "place_type"."id" AND "area_alias"."type" = "area_alias_type"."id" AND "area"."id" = "artist"."area" AND "area"."id" = "label"."area" AND "artist"."id" = "artist_alias"."artist" AND "area"."id" = "country_area"."area" AND "area"."type" = "area_type"."id" AND "artist"."gender" = "gender"."id" AND "artist"."id" = "artist_isni"."artist" AND "label"."id" = "label_isni"."label" AND "label"."type" = "label_type"."id";

