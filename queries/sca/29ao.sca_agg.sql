SELECT min(label.id) FROM "label_isni", "label", "release_label", "area", "label_alias", "area_type", "area_alias", "label_type", "release", "artist_credit", "place", "track", "artist_credit_name", "place_type", "iso_3166_3", "medium", "label_ipi", "script", "artist", "iso_3166_2", "country_area", "artist_alias", "release_status", "label_alias_type", "release_unknown_country", "gender", "medium_cdtoc", "recording", "medium_format" WHERE "label_isni"."label" = "label"."id" AND "label"."id" = "release_label"."label" AND "label"."area" = "area"."id" AND "label"."id" = "label_alias"."label" AND "area"."type" = "area_type"."id" AND "area"."id" = "area_alias"."area" AND "label"."type" = "label_type"."id" AND "release_label"."release" = "release"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "area"."id" = "place"."area" AND "artist_credit"."id" = "track"."artist_credit" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "place"."type" = "place_type"."id" AND "area"."id" = "iso_3166_3"."area" AND "release"."id" = "medium"."release" AND "label"."id" = "label_ipi"."label" AND "release"."script" = "script"."id" AND "area"."id" = "artist"."area" AND "artist_credit_name"."artist" = "artist"."id" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "country_area"."area" AND "artist"."id" = "artist_alias"."artist" AND "release"."status" = "release_status"."id" AND "label_alias"."type" = "label_alias_type"."id" AND "release"."id" = "release_unknown_country"."release" AND "artist"."gender" = "gender"."id" AND "medium"."id" = "medium_cdtoc"."medium" AND "artist_credit"."id" = "recording"."artist_credit" AND "track"."recording" = "recording"."id" AND "medium"."format" = "medium_format"."id";
