SELECT * FROM "artist_credit", "artist_credit_name", "release_group", "artist", "artist_alias", "area", "iso_3166_3", "release_group_primary_type", "iso_3166_1", "artist_ipi", "release_group_secondary_type_join", "label", "area_alias", "release_group_secondary_type", "iso_3166_2" WHERE "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "artist_credit"."id" = "release_group"."artist_credit" AND "artist_credit_name"."artist" = "artist"."id" AND "artist"."id" = "artist_alias"."artist" AND "artist"."area" = "area"."id" AND "area"."id" = "iso_3166_3"."area" AND "release_group"."type" = "release_group_primary_type"."id" AND "area"."id" = "iso_3166_1"."area" AND "artist"."id" = "artist_ipi"."artist" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "area"."id" = "label"."area" AND "area"."id" = "area_alias"."area" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "area"."id" = "iso_3166_2"."area";
