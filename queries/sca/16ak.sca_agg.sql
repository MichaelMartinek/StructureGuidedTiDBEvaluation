SELECT min(label.id) FROM "label_alias", "label", "label_alias_type", "area", "iso_3166_3", "artist", "label_type", "iso_3166_1", "area_type", "artist_credit_name", "place", "place_type", "gender", "artist_alias", "artist_isni", "artist_credit" WHERE "label_alias"."label" = "label"."id" AND "label_alias"."type" = "label_alias_type"."id" AND "label"."area" = "area"."id" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "artist"."area" AND "label"."type" = "label_type"."id" AND "area"."id" = "iso_3166_1"."area" AND "area"."type" = "area_type"."id" AND "artist"."id" = "artist_credit_name"."artist" AND "area"."id" = "place"."area" AND "place"."type" = "place_type"."id" AND "artist"."gender" = "gender"."id" AND "artist"."id" = "artist_alias"."artist" AND "artist"."id" = "artist_isni"."artist" AND "artist_credit_name"."artist_credit" = "artist_credit"."id";
