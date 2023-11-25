SELECT min(area_alias.type) FROM "area_alias_type", "area_alias", "area", "iso_3166_1", "iso_3166_2", "iso_3166_3", "label" WHERE "area_alias_type"."id" = "area_alias"."type" AND "area_alias"."area" = "area"."id" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "label"."area";

