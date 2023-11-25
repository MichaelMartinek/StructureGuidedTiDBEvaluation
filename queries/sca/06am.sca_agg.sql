SELECT min(isrc.recording) FROM "isrc", "recording", "track", "medium", "medium_format", "medium_cdtoc" WHERE "isrc"."recording" = "recording"."id" AND "recording"."id" = "track"."recording" AND "track"."medium" = "medium"."id" AND "medium"."format" = "medium_format"."id" AND "medium"."id" = "medium_cdtoc"."medium";

