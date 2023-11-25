SELECT min(label.id) FROM "label_alias", "label", "label_type", "label_isni", "label_ipi", "label_alias_type", "area", "country_area", "area_type", "iso_3166_2", "release_country", "artist" WHERE "label_alias"."label" = "label"."id" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_isni"."label" AND "label"."id" = "label_ipi"."label" AND "label_alias"."type" = "label_alias_type"."id" AND "label"."area" = "area"."id" AND "area"."id" = "country_area"."area" AND "area"."type" = "area_type"."id" AND "area"."id" = "iso_3166_2"."area" AND "country_area"."area" = "release_country"."country" AND "area"."id" = "artist"."area";

