SELECT * FROM "label_alias", "label", "label_alias_type", "label_type", "label_ipi", "label_isni", "area", "release_label", "iso_3166_1", "artist", "iso_3166_3", "artist_credit_name", "area_type", "gender", "iso_3166_2", "release", "artist_alias", "artist_credit", "place", "script", "place_type", "release_unknown_country", "release_status", "release_country" WHERE "label_alias"."label" = "label"."id" AND "label_alias"."type" = "label_alias_type"."id" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_ipi"."label" AND "label"."id" = "label_isni"."label" AND "label"."area" = "area"."id" AND "label"."id" = "release_label"."label" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "artist"."area" AND "area"."id" = "iso_3166_3"."area" AND "artist"."id" = "artist_credit_name"."artist" AND "area"."type" = "area_type"."id" AND "artist"."gender" = "gender"."id" AND "area"."id" = "iso_3166_2"."area" AND "release_label"."release" = "release"."id" AND "artist"."id" = "artist_alias"."artist" AND "artist_credit_name"."artist_credit" = "artist_credit"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "area"."id" = "place"."area" AND "release"."script" = "script"."id" AND "place"."type" = "place_type"."id" AND "release"."id" = "release_unknown_country"."release" AND "release"."status" = "release_status"."id" AND "release"."id" = "release_country"."release";
