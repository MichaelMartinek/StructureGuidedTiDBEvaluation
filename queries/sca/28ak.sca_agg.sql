SELECT min(area.type) FROM "area_type", "area", "artist", "place", "gender", "artist_isni", "place_alias", "artist_alias", "iso_3166_1", "artist_credit_name", "country_area", "label", "iso_3166_2", "label_ipi", "place_alias_type", "label_type", "artist_alias_type", "release_country", "area_alias", "artist_credit", "label_alias", "label_isni", "track", "place_type", "medium", "area_alias_type", "medium_cdtoc", "release_label" WHERE "area_type"."id" = "area"."type" AND "area"."id" = "artist"."area" AND "area"."id" = "place"."area" AND "artist"."gender" = "gender"."id" AND "artist"."id" = "artist_isni"."artist" AND "place"."id" = "place_alias"."place" AND "artist"."id" = "artist_alias"."artist" AND "area"."id" = "iso_3166_1"."area" AND "artist"."id" = "artist_credit_name"."artist" AND "area"."id" = "country_area"."area" AND "area"."id" = "label"."area" AND "area"."id" = "iso_3166_2"."area" AND "label"."id" = "label_ipi"."label" AND "place_alias"."type" = "place_alias_type"."id" AND "label"."type" = "label_type"."id" AND "artist_alias"."type" = "artist_alias_type"."id" AND "country_area"."area" = "release_country"."country" AND "area"."id" = "area_alias"."area" AND "artist_credit_name"."artist_credit" = "artist_credit"."id" AND "label"."id" = "label_alias"."label" AND "label"."id" = "label_isni"."label" AND "artist_credit"."id" = "track"."artist_credit" AND "place"."type" = "place_type"."id" AND "track"."medium" = "medium"."id" AND "area_alias"."type" = "area_alias_type"."id" AND "medium"."id" = "medium_cdtoc"."medium" AND "label"."id" = "release_label"."label";
