SELECT * FROM "artist_isni", "artist", "area", "artist_ipi", "label", "artist_alias", "country_area", "iso_3166_1", "release_label", "area_type", "label_isni", "iso_3166_3", "release", "artist_alias_type", "release_status", "script", "gender" WHERE "artist_isni"."artist" = "artist"."id" AND "artist"."area" = "area"."id" AND "artist"."id" = "artist_ipi"."artist" AND "area"."id" = "label"."area" AND "artist"."id" = "artist_alias"."artist" AND "area"."id" = "country_area"."area" AND "area"."id" = "iso_3166_1"."area" AND "label"."id" = "release_label"."label" AND "area"."type" = "area_type"."id" AND "label"."id" = "label_isni"."label" AND "area"."id" = "iso_3166_3"."area" AND "release_label"."release" = "release"."id" AND "artist_alias"."type" = "artist_alias_type"."id" AND "release"."status" = "release_status"."id" AND "release"."script" = "script"."id" AND "artist"."gender" = "gender"."id";
