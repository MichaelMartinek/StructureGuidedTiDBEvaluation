SELECT min(label.id) FROM "label_isni", "label", "area", "area_type", "label_type", "country_area" WHERE "label_isni"."label" = "label"."id" AND "label"."area" = "area"."id" AND "area"."type" = "area_type"."id" AND "label"."type" = "label_type"."id" AND "area"."id" = "country_area"."area";

