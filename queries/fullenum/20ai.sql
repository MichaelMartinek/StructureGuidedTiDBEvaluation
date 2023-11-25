SELECT * FROM "isrc", "recording", "artist_credit", "artist_credit_name", "release_group", "release_group_secondary_type_join", "artist", "release_group_secondary_type", "artist_ipi", "artist_alias", "artist_type", "gender", "release_group_primary_type", "area", "release", "country_area", "release_status", "iso_3166_2", "script", "language" WHERE "isrc"."recording" = "recording"."id" AND "recording"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "artist_credit"."id" = "release_group"."artist_credit" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "artist_credit_name"."artist" = "artist"."id" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."id" = "artist_alias"."artist" AND "artist"."type" = "artist_type"."id" AND "artist"."gender" = "gender"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "artist"."area" = "area"."id" AND "release_group"."id" = "release"."release_group" AND "artist_credit"."id" = "release"."artist_credit" AND "area"."id" = "country_area"."area" AND "release"."status" = "release_status"."id" AND "area"."id" = "iso_3166_2"."area" AND "release"."script" = "script"."id" AND "release"."language" = "language"."id";
