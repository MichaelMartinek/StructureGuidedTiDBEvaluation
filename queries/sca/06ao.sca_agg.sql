SELECT min(isrc.recording) FROM "isrc", "recording", "track", "medium", "artist_credit", "artist_credit_name" WHERE "isrc"."recording" = "recording"."id" AND "recording"."id" = "track"."recording" AND "track"."medium" = "medium"."id" AND "track"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit";

