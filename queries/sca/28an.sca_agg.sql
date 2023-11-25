SELECT min(label_alias.type) FROM "label_alias", "label_alias_type", "label", "area", "artist", "area_alias", "artist_credit_name", "artist_isni", "iso_3166_1", "area_type", "iso_3166_3", "gender", "artist_ipi", "artist_alias", "iso_3166_2", "place", "artist_alias_type", "label_type", "label_ipi", "artist_type", "release_label", "release", "label_isni", "release_status", "place_type", "language", "country_area", "artist_credit" WHERE "label_alias"."type" = "label_alias_type"."id" AND "label_alias"."label" = "label"."id" AND "label"."area" = "area"."id" AND "area"."id" = "artist"."area" AND "area"."id" = "area_alias"."area" AND "artist"."id" = "artist_credit_name"."artist" AND "artist"."id" = "artist_isni"."artist" AND "area"."id" = "iso_3166_1"."area" AND "area"."type" = "area_type"."id" AND "area"."id" = "iso_3166_3"."area" AND "artist"."gender" = "gender"."id" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."id" = "artist_alias"."artist" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "place"."area" AND "artist_alias"."type" = "artist_alias_type"."id" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_ipi"."label" AND "artist"."type" = "artist_type"."id" AND "label"."id" = "release_label"."label" AND "release_label"."release" = "release"."id" AND "label"."id" = "label_isni"."label" AND "release"."status" = "release_status"."id" AND "place"."type" = "place_type"."id" AND "release"."language" = "language"."id" AND "area"."id" = "country_area"."area" AND "release"."artist_credit" = "artist_credit"."id" AND "artist_credit_name"."artist_credit" = "artist_credit"."id";

