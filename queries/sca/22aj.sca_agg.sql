SELECT min(area.id) FROM "iso_3166_1", "area", "area_alias", "artist", "gender", "label", "artist_ipi", "label_type", "country_area", "label_isni", "release_label", "artist_credit_name", "label_alias", "release", "medium", "place", "label_alias_type", "place_alias", "language", "iso_3166_3", "medium_cdtoc", "iso_3166_2" WHERE "iso_3166_1"."area" = "area"."id" AND "area"."id" = "area_alias"."area" AND "area"."id" = "artist"."area" AND "artist"."gender" = "gender"."id" AND "area"."id" = "label"."area" AND "artist"."id" = "artist_ipi"."artist" AND "label"."type" = "label_type"."id" AND "area"."id" = "country_area"."area" AND "label"."id" = "label_isni"."label" AND "label"."id" = "release_label"."label" AND "artist"."id" = "artist_credit_name"."artist" AND "label"."id" = "label_alias"."label" AND "release_label"."release" = "release"."id" AND "release"."id" = "medium"."release" AND "area"."id" = "place"."area" AND "label_alias"."type" = "label_alias_type"."id" AND "place"."id" = "place_alias"."place" AND "release"."language" = "language"."id" AND "area"."id" = "iso_3166_3"."area" AND "medium"."id" = "medium_cdtoc"."medium" AND "area"."id" = "iso_3166_2"."area";

