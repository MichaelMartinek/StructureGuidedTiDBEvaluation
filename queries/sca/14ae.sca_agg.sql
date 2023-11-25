SELECT min(release.script) FROM "script", "release", "release_unknown_country", "release_country", "medium", "release_label", "medium_format", "medium_cdtoc", "label", "release_status", "track", "language", "cdtoc", "recording" WHERE "script"."id" = "release"."script" AND "release"."id" = "release_unknown_country"."release" AND "release"."id" = "release_country"."release" AND "release"."id" = "medium"."release" AND "release"."id" = "release_label"."release" AND "medium"."format" = "medium_format"."id" AND "medium"."id" = "medium_cdtoc"."medium" AND "release_label"."label" = "label"."id" AND "release"."status" = "release_status"."id" AND "medium"."id" = "track"."medium" AND "release"."language" = "language"."id" AND "medium_cdtoc"."cdtoc" = "cdtoc"."id" AND "track"."recording" = "recording"."id";
