SELECT min(place.type) FROM "place_type", "place", "place_alias", "place_alias_type", "area" WHERE "place_type"."id" = "place"."type" AND "place"."id" = "place_alias"."place" AND "place_alias"."type" = "place_alias_type"."id" AND "place"."area" = "area"."id";

