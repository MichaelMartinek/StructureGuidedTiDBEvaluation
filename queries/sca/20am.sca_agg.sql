SELECT min(cdtoc.id) FROM "cdtoc", "medium_cdtoc", "medium", "track", "recording", "artist_credit", "artist_credit_name", "release", "release_label", "label", "label_ipi", "label_type", "label_alias", "language", "area", "release_country", "area_type", "artist", "script", "artist_ipi", "iso_3166_2" WHERE "cdtoc"."id" = "medium_cdtoc"."cdtoc" AND "medium_cdtoc"."medium" = "medium"."id" AND "medium"."id" = "track"."medium" AND "track"."recording" = "recording"."id" AND "recording"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "medium"."release" = "release"."id" AND "release"."id" = "release_label"."release" AND "release_label"."label" = "label"."id" AND "label"."id" = "label_ipi"."label" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_alias"."label" AND "release"."language" = "language"."id" AND "label"."area" = "area"."id" AND "release"."id" = "release_country"."release" AND "area"."type" = "area_type"."id" AND "area"."id" = "artist"."area" AND "artist_credit_name"."artist" = "artist"."id" AND "release"."script" = "script"."id" AND "artist"."id" = "artist_ipi"."artist" AND "area"."id" = "iso_3166_2"."area";

