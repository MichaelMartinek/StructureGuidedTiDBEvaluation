SELECT min(medium.id) FROM "medium", "track", "recording", "medium_format", "medium_cdtoc" WHERE "medium"."id" = "track"."medium" AND "track"."recording" = "recording"."id" AND "medium"."format" = "medium_format"."id" AND "medium"."id" = "medium_cdtoc"."medium";

