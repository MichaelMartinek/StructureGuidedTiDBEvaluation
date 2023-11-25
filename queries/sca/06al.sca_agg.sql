SELECT min(artist_credit.id) FROM "artist_credit", "recording", "artist_credit_name", "track", "release", "artist" WHERE "artist_credit"."id" = "recording"."artist_credit" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "recording"."id" = "track"."recording" AND "artist_credit"."id" = "release"."artist_credit" AND "artist_credit_name"."artist" = "artist"."id";

