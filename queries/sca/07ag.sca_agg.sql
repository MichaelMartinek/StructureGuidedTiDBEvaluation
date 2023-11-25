SELECT min(label.id) FROM "label_alias", "label", "area", "country_area", "place", "iso_3166_3", "label_isni" WHERE "label_alias"."label" = "label"."id" AND "label"."area" = "area"."id" AND "area"."id" = "country_area"."area" AND "area"."id" = "place"."area" AND "area"."id" = "iso_3166_3"."area" AND "label"."id" = "label_isni"."label";

