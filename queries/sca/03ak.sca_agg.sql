SELECT min(area.type) FROM "area_type", "area", "iso_3166_3" WHERE "area_type"."id" = "area"."type" AND "area"."id" = "iso_3166_3"."area";

