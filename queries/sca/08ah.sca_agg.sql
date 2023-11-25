SELECT min(area.id) FROM "country_area", "area", "area_alias", "artist", "area_type", "gender", "iso_3166_3", "label" WHERE "country_area"."area" = "area"."id" AND "area"."id" = "area_alias"."area" AND "area"."id" = "artist"."area" AND "area"."type" = "area_type"."id" AND "artist"."gender" = "gender"."id" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "label"."area";

