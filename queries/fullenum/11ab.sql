SELECT * FROM "medium_cdtoc", "cdtoc", "medium", "track", "recording", "artist_credit", "release_group", "release_group_primary_type", "release", "release_group_secondary_type_join", "script" WHERE "medium_cdtoc"."cdtoc" = "cdtoc"."id" AND "medium_cdtoc"."medium" = "medium"."id" AND "medium"."id" = "track"."medium" AND "track"."recording" = "recording"."id" AND "recording"."artist_credit" = "artist_credit"."id" AND "track"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_group"."id" = "release"."release_group" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release"."script" = "script"."id";