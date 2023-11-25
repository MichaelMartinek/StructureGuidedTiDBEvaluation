SELECT * FROM "place_type", "place", "place_alias", "place_alias_type", "area", "label", "artist", "area_alias", "artist_ipi", "release_label", "label_type", "country_area", "artist_type", "release_country", "release", "label_isni", "artist_credit_name", "artist_credit", "area_alias_type", "gender" WHERE "place_type"."id" = "place"."type" AND "place"."id" = "place_alias"."place" AND "place_alias"."type" = "place_alias_type"."id" AND "place"."area" = "area"."id" AND "area"."id" = "label"."area" AND "area"."id" = "artist"."area" AND "area"."id" = "area_alias"."area" AND "artist"."id" = "artist_ipi"."artist" AND "label"."id" = "release_label"."label" AND "label"."type" = "label_type"."id" AND "area"."id" = "country_area"."area" AND "artist"."type" = "artist_type"."id" AND "country_area"."area" = "release_country"."country" AND "release_label"."release" = "release"."id" AND "label"."id" = "label_isni"."label" AND "artist"."id" = "artist_credit_name"."artist" AND "release"."artist_credit" = "artist_credit"."id" AND "artist_credit_name"."artist_credit" = "artist_credit"."id" AND "area_alias"."type" = "area_alias_type"."id" AND "artist"."gender" = "gender"."id";
