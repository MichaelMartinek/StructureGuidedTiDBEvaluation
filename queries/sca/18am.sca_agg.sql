SELECT min(isrc.recording) FROM "recording", "track", "isrc", "artist_credit", "artist_credit_name", "medium", "artist", "gender", "area", "area_type", "area_alias", "release", "language", "release_packaging", "country_area", "release_unknown_country", "artist_alias", "iso_3166_1", "release_status" WHERE "recording"."id" = "track"."recording" AND "recording"."id" = "isrc"."recording" AND "track"."artist_credit" = "artist_credit"."id" AND "recording"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "track"."medium" = "medium"."id" AND "artist_credit_name"."artist" = "artist"."id" AND "artist"."gender" = "gender"."id" AND "artist"."area" = "area"."id" AND "area"."type" = "area_type"."id" AND "area"."id" = "area_alias"."area" AND "medium"."release" = "release"."id" AND "release"."language" = "language"."id" AND "release"."packaging" = "release_packaging"."id" AND "area"."id" = "country_area"."area" AND "release"."id" = "release_unknown_country"."release" AND "artist"."id" = "artist_alias"."artist" AND "area"."id" = "iso_3166_1"."area" AND "release"."status" = "release_status"."id";

