SELECT * FROM "track", "recording", "medium", "medium_format", "release", "script", "release_status", "isrc", "release_packaging", "release_label", "medium_cdtoc", "artist_credit", "release_unknown_country", "release_country", "country_area", "release_group", "area", "artist", "label", "artist_isni", "label_isni", "iso_3166_3", "artist_credit_name", "gender", "cdtoc", "iso_3166_2", "label_ipi" WHERE "track"."recording" = "recording"."id" AND "track"."medium" = "medium"."id" AND "medium"."format" = "medium_format"."id" AND "medium"."release" = "release"."id" AND "release"."script" = "script"."id" AND "release"."status" = "release_status"."id" AND "recording"."id" = "isrc"."recording" AND "release"."packaging" = "release_packaging"."id" AND "release"."id" = "release_label"."release" AND "medium"."id" = "medium_cdtoc"."medium" AND "track"."artist_credit" = "artist_credit"."id" AND "release"."id" = "release_unknown_country"."release" AND "release"."id" = "release_country"."release" AND "release_country"."country" = "country_area"."area" AND "artist_credit"."id" = "release_group"."artist_credit" AND "country_area"."area" = "area"."id" AND "area"."id" = "artist"."area" AND "area"."id" = "label"."area" AND "artist"."id" = "artist_isni"."artist" AND "label"."id" = "label_isni"."label" AND "area"."id" = "iso_3166_3"."area" AND "artist"."id" = "artist_credit_name"."artist" AND "artist"."gender" = "gender"."id" AND "medium_cdtoc"."cdtoc" = "cdtoc"."id" AND "area"."id" = "iso_3166_2"."area" AND "label"."id" = "label_ipi"."label";
