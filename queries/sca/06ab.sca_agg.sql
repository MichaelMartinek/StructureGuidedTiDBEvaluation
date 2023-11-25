SELECT min(area.type) FROM "area_type", "area", "iso_3166_1", "label", "iso_3166_3", "artist" WHERE "area_type"."id" = "area"."type" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "label"."area" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "artist"."area";

