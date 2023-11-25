SELECT min(area.type) FROM "area_type", "area", "iso_3166_3", "iso_3166_1", "label", "label_isni", "label_alias", "release_label", "place", "place_type", "label_type", "label_ipi", "place_alias" WHERE "area_type"."id" = "area"."type" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "label"."area" AND "label"."id" = "label_isni"."label" AND "label"."id" = "label_alias"."label" AND "label"."id" = "release_label"."label" AND "area"."id" = "place"."area" AND "place"."type" = "place_type"."id" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_ipi"."label" AND "place"."id" = "place_alias"."place";

