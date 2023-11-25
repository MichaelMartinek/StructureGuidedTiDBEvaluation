SELECT min(artist_credit.id) FROM "artist_credit", "recording", "artist_credit_name", "isrc", "release", "release_status", "medium", "script", "release_unknown_country", "release_packaging", "artist" WHERE "artist_credit"."id" = "recording"."artist_credit" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "recording"."id" = "isrc"."recording" AND "artist_credit"."id" = "release"."artist_credit" AND "release"."status" = "release_status"."id" AND "release"."id" = "medium"."release" AND "release"."script" = "script"."id" AND "release"."id" = "release_unknown_country"."release" AND "release"."packaging" = "release_packaging"."id" AND "artist_credit_name"."artist" = "artist"."id";

