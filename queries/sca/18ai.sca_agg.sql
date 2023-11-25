SELECT min(label_alias.type) FROM "label_alias", "label_alias_type", "label", "area", "area_type", "iso_3166_2", "area_alias", "country_area", "place", "place_type", "artist", "label_type", "label_isni", "artist_isni", "gender", "area_alias_type", "artist_type", "artist_ipi" WHERE "label_alias"."type" = "label_alias_type"."id" AND "label_alias"."label" = "label"."id" AND "label"."area" = "area"."id" AND "area"."type" = "area_type"."id" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "area_alias"."area" AND "area"."id" = "country_area"."area" AND "area"."id" = "place"."area" AND "place"."type" = "place_type"."id" AND "area"."id" = "artist"."area" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_isni"."label" AND "artist"."id" = "artist_isni"."artist" AND "artist"."gender" = "gender"."id" AND "area_alias"."type" = "area_alias_type"."id" AND "artist"."type" = "artist_type"."id" AND "artist"."id" = "artist_ipi"."artist";

