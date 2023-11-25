SELECT min(release.packaging) FROM "release_packaging", "release", "medium", "release_label", "track", "release_country", "release_unknown_country", "country_area", "script", "medium_format", "label", "label_ipi", "artist_credit", "label_isni", "area", "artist", "medium_cdtoc", "gender" WHERE "release_packaging"."id" = "release"."packaging" AND "release"."id" = "medium"."release" AND "release"."id" = "release_label"."release" AND "medium"."id" = "track"."medium" AND "release"."id" = "release_country"."release" AND "release"."id" = "release_unknown_country"."release" AND "release_country"."country" = "country_area"."area" AND "release"."script" = "script"."id" AND "medium"."format" = "medium_format"."id" AND "release_label"."label" = "label"."id" AND "label"."id" = "label_ipi"."label" AND "track"."artist_credit" = "artist_credit"."id" AND "label"."id" = "label_isni"."label" AND "label"."area" = "area"."id" AND "area"."id" = "artist"."area" AND "medium"."id" = "medium_cdtoc"."medium" AND "artist"."gender" = "gender"."id";
