SELECT * FROM "label_type", "label", "area", "iso_3166_1", "iso_3166_2" WHERE "label_type"."id" = "label"."type" AND "label"."area" = "area"."id" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "iso_3166_2"."area";
