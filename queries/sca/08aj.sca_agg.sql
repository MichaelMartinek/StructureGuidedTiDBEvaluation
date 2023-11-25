SELECT min(label.type) FROM "label_type", "label", "release_label", "label_ipi", "area", "place", "country_area", "iso_3166_3" WHERE "label_type"."id" = "label"."type" AND "label"."id" = "release_label"."label" AND "label"."id" = "label_ipi"."label" AND "label"."area" = "area"."id" AND "area"."id" = "place"."area" AND "area"."id" = "country_area"."area" AND "area"."id" = "iso_3166_3"."area";

