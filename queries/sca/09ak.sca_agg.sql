SELECT min(area.type) FROM "area_type", "area", "label", "label_alias", "country_area", "label_alias_type", "label_ipi", "label_isni", "area_alias" WHERE "area_type"."id" = "area"."type" AND "area"."id" = "label"."area" AND "label"."id" = "label_alias"."label" AND "area"."id" = "country_area"."area" AND "label_alias"."type" = "label_alias_type"."id" AND "label"."id" = "label_ipi"."label" AND "label"."id" = "label_isni"."label" AND "area"."id" = "area_alias"."area";
