SELECT * FROM "label_ipi", "label", "label_isni", "label_alias", "release_label", "release", "release_unknown_country" WHERE "label_ipi"."label" = "label"."id" AND "label"."id" = "label_isni"."label" AND "label"."id" = "label_alias"."label" AND "label"."id" = "release_label"."label" AND "release_label"."release" = "release"."id" AND "release"."id" = "release_unknown_country"."release";
