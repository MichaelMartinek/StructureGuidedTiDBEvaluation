SELECT min(area.id) FROM "iso_3166_1", "area", "area_alias", "artist", "country_area" WHERE "iso_3166_1"."area" = "area"."id" AND "area"."id" = "area_alias"."area" AND "area"."id" = "artist"."area" AND "area"."id" = "country_area"."area";

