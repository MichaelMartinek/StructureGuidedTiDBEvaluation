SELECT min(area.id) FROM "iso_3166_3", "area", "iso_3166_2", "label", "iso_3166_1", "area_alias", "label_type" WHERE "iso_3166_3"."area" = "area"."id" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "label"."area" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "area_alias"."area" AND "label"."type" = "label_type"."id";

