SELECT min(label.id) FROM "label_ipi", "label", "label_isni", "label_type", "area" WHERE "label_ipi"."label" = "label"."id" AND "label"."id" = "label_isni"."label" AND "label"."type" = "label_type"."id" AND "label"."area" = "area"."id";

