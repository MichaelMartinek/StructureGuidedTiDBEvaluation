SELECT * FROM "recording", "isrc", "track", "artist_credit", "artist_credit_name", "release", "language", "release_label", "artist", "gender", "release_group" WHERE "recording"."id" = "isrc"."recording" AND "recording"."id" = "track"."recording" AND "recording"."artist_credit" = "artist_credit"."id" AND "track"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "artist_credit"."id" = "release"."artist_credit" AND "release"."language" = "language"."id" AND "release"."id" = "release_label"."release" AND "artist_credit_name"."artist" = "artist"."id" AND "artist"."gender" = "gender"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "release"."release_group" = "release_group"."id";
