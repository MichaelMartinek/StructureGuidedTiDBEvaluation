SELECT * FROM "iso_3166_1", "area", "iso_3166_3", "place", "artist", "artist_type", "artist_ipi", "artist_isni", "area_type", "artist_credit_name", "gender", "label", "release_label", "release", "artist_alias", "label_alias", "release_packaging", "area_alias", "release_status", "iso_3166_2", "label_ipi", "script", "artist_credit" WHERE "iso_3166_1"."area" = "area"."id" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "place"."area" AND "area"."id" = "artist"."area" AND "artist"."type" = "artist_type"."id" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."id" = "artist_isni"."artist" AND "area"."type" = "area_type"."id" AND "artist"."id" = "artist_credit_name"."artist" AND "artist"."gender" = "gender"."id" AND "area"."id" = "label"."area" AND "label"."id" = "release_label"."label" AND "release_label"."release" = "release"."id" AND "artist"."id" = "artist_alias"."artist" AND "label"."id" = "label_alias"."label" AND "release"."packaging" = "release_packaging"."id" AND "area"."id" = "area_alias"."area" AND "release"."status" = "release_status"."id" AND "area"."id" = "iso_3166_2"."area" AND "label"."id" = "label_ipi"."label" AND "release"."script" = "script"."id" AND "artist_credit_name"."artist_credit" = "artist_credit"."id" AND "release"."artist_credit" = "artist_credit"."id";