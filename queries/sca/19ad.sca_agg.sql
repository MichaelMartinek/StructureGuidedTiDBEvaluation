SELECT min(cdtoc.id) FROM "cdtoc", "medium_cdtoc", "medium", "release", "release_group", "artist_credit", "script", "recording", "release_status", "language", "release_country", "release_packaging", "country_area", "area", "release_label", "iso_3166_1", "iso_3166_2", "track", "area_alias" WHERE "cdtoc"."id" = "medium_cdtoc"."cdtoc" AND "medium_cdtoc"."medium" = "medium"."id" AND "medium"."release" = "release"."id" AND "release"."release_group" = "release_group"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "release_group"."artist_credit" = "artist_credit"."id" AND "release"."script" = "script"."id" AND "artist_credit"."id" = "recording"."artist_credit" AND "release"."status" = "release_status"."id" AND "release"."language" = "language"."id" AND "release"."id" = "release_country"."release" AND "release"."packaging" = "release_packaging"."id" AND "release_country"."country" = "country_area"."area" AND "country_area"."area" = "area"."id" AND "release"."id" = "release_label"."release" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "iso_3166_2"."area" AND "medium"."id" = "track"."medium" AND "recording"."id" = "track"."recording" AND "artist_credit"."id" = "track"."artist_credit" AND "area"."id" = "area_alias"."area";

