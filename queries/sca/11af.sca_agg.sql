SELECT min(label.id) FROM "label_ipi", "label", "area", "iso_3166_1", "place", "area_type", "label_type", "place_type", "area_alias", "country_area", "label_alias" WHERE "label_ipi"."label" = "label"."id" AND "label"."area" = "area"."id" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "place"."area" AND "area"."type" = "area_type"."id" AND "label"."type" = "label_type"."id" AND "place"."type" = "place_type"."id" AND "area"."id" = "area_alias"."area" AND "area"."id" = "country_area"."area" AND "label"."id" = "label_alias"."label";

