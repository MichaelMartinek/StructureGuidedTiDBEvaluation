SELECT * FROM "label_ipi", "label", "label_alias", "label_type", "label_isni", "area", "label_alias_type", "iso_3166_1", "area_type", "area_alias", "iso_3166_2", "release_label", "release", "script", "country_area" WHERE "label_ipi"."label" = "label"."id" AND "label"."id" = "label_alias"."label" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_isni"."label" AND "label"."area" = "area"."id" AND "label_alias"."type" = "label_alias_type"."id" AND "area"."id" = "iso_3166_1"."area" AND "area"."type" = "area_type"."id" AND "area"."id" = "area_alias"."area" AND "area"."id" = "iso_3166_2"."area" AND "label"."id" = "release_label"."label" AND "release_label"."release" = "release"."id" AND "release"."script" = "script"."id" AND "area"."id" = "country_area"."area";
