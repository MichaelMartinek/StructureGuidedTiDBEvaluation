SELECT min(isrc.recording) FROM "isrc", "recording", "artist_credit", "release_group", "release", "script", "medium", "artist_credit_name", "artist", "area", "area_type", "gender", "release_group_primary_type" WHERE "isrc"."recording" = "recording"."id" AND "recording"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "artist_credit"."id" = "release"."artist_credit" AND "release"."script" = "script"."id" AND "release"."id" = "medium"."release" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "artist_credit_name"."artist" = "artist"."id" AND "artist"."area" = "area"."id" AND "area"."type" = "area_type"."id" AND "artist"."gender" = "gender"."id" AND "release_group"."type" = "release_group_primary_type"."id";

