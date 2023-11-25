SELECT * FROM "label_alias_type", "label_alias", "label", "label_isni", "label_ipi", "label_type", "area", "artist", "artist_isni", "artist_type", "area_type", "place", "country_area", "place_type", "gender", "place_alias", "area_alias", "release_country", "artist_ipi", "artist_alias", "artist_alias_type", "area_alias_type" WHERE "label_alias_type"."id" = "label_alias"."type" AND "label_alias"."label" = "label"."id" AND "label"."id" = "label_isni"."label" AND "label"."id" = "label_ipi"."label" AND "label"."type" = "label_type"."id" AND "label"."area" = "area"."id" AND "area"."id" = "artist"."area" AND "artist"."id" = "artist_isni"."artist" AND "artist"."type" = "artist_type"."id" AND "area"."type" = "area_type"."id" AND "area"."id" = "place"."area" AND "area"."id" = "country_area"."area" AND "place"."type" = "place_type"."id" AND "artist"."gender" = "gender"."id" AND "place"."id" = "place_alias"."place" AND "area"."id" = "area_alias"."area" AND "country_area"."area" = "release_country"."country" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."id" = "artist_alias"."artist" AND "artist_alias"."type" = "artist_alias_type"."id" AND "area_alias"."type" = "area_alias_type"."id";
