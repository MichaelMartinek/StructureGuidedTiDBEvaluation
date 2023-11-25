SELECT min(place_alias.type) FROM "place_alias", "place_alias_type", "place", "place_type", "area", "artist", "area_alias" WHERE "place_alias"."type" = "place_alias_type"."id" AND "place_alias"."place" = "place"."id" AND "place"."type" = "place_type"."id" AND "place"."area" = "area"."id" AND "area"."id" = "artist"."area" AND "area"."id" = "area_alias"."area";

