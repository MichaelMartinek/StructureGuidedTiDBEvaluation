SELECT min(label_alias.type) FROM "label_alias", "label_alias_type", "label", "label_isni", "label_ipi" WHERE "label_alias"."type" = "label_alias_type"."id" AND "label_alias"."label" = "label"."id" AND "label"."id" = "label_isni"."label" AND "label"."id" = "label_ipi"."label";

