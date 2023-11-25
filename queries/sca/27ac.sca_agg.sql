SELECT min(release_group.type) FROM "release_group_primary_type", "release_group", "artist_credit", "release", "release_packaging", "release_country", "track", "release_status", "recording", "release_group_secondary_type_join", "script", "country_area", "release_label", "release_unknown_country", "artist_credit_name", "isrc", "area", "area_type", "artist", "release_group_secondary_type", "place", "label", "label_ipi", "place_type", "artist_type", "label_type", "label_alias" WHERE "release_group_primary_type"."id" = "release_group"."type" AND "release_group"."artist_credit" = "artist_credit"."id" AND "release_group"."id" = "release"."release_group" AND "artist_credit"."id" = "release"."artist_credit" AND "release"."packaging" = "release_packaging"."id" AND "release"."id" = "release_country"."release" AND "artist_credit"."id" = "track"."artist_credit" AND "release"."status" = "release_status"."id" AND "artist_credit"."id" = "recording"."artist_credit" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release"."script" = "script"."id" AND "release_country"."country" = "country_area"."area" AND "release"."id" = "release_label"."release" AND "release"."id" = "release_unknown_country"."release" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "recording"."id" = "isrc"."recording" AND "country_area"."area" = "area"."id" AND "area"."type" = "area_type"."id" AND "artist_credit_name"."artist" = "artist"."id" AND "area"."id" = "artist"."area" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "area"."id" = "place"."area" AND "area"."id" = "label"."area" AND "label"."id" = "label_ipi"."label" AND "place"."type" = "place_type"."id" AND "artist"."type" = "artist_type"."id" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_alias"."label";

