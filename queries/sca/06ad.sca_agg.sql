SELECT min(medium.format) FROM "medium_format", "medium", "release", "release_label", "medium_cdtoc", "label" WHERE "medium_format"."id" = "medium"."format" AND "medium"."release" = "release"."id" AND "release"."id" = "release_label"."release" AND "medium"."id" = "medium_cdtoc"."medium" AND "release_label"."label" = "label"."id";

