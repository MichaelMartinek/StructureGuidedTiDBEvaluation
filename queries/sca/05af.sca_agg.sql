SELECT min(label.type) FROM "label_type", "label", "label_alias", "release_label", "release" WHERE "label_type"."id" = "label"."type" AND "label"."id" = "label_alias"."label" AND "label"."id" = "release_label"."label" AND "release_label"."release" = "release"."id";

