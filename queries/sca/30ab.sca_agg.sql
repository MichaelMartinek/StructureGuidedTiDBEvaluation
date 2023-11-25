SELECT min(artist.type) FROM "artist_type", "artist", "artist_isni", "area", "gender", "label", "area_type", "country_area", "area_alias", "label_ipi", "label_type", "label_isni", "release_label", "artist_ipi", "area_alias_type", "artist_credit_name", "artist_credit", "release", "iso_3166_2", "release_group", "artist_alias", "medium", "release_group_secondary_type_join", "label_alias", "release_group_primary_type", "release_country", "release_packaging", "recording", "track", "medium_cdtoc" WHERE "artist_type"."id" = "artist"."type" AND "artist"."id" = "artist_isni"."artist" AND "artist"."area" = "area"."id" AND "artist"."gender" = "gender"."id" AND "area"."id" = "label"."area" AND "area"."type" = "area_type"."id" AND "area"."id" = "country_area"."area" AND "area"."id" = "area_alias"."area" AND "label"."id" = "label_ipi"."label" AND "label"."type" = "label_type"."id" AND "label"."id" = "label_isni"."label" AND "label"."id" = "release_label"."label" AND "artist"."id" = "artist_ipi"."artist" AND "area_alias"."type" = "area_alias_type"."id" AND "artist"."id" = "artist_credit_name"."artist" AND "artist_credit_name"."artist_credit" = "artist_credit"."id" AND "release_label"."release" = "release"."id" AND "area"."id" = "iso_3166_2"."area" AND "release"."release_group" = "release_group"."id" AND "artist_credit"."id" = "release_group"."artist_credit" AND "artist"."id" = "artist_alias"."artist" AND "release"."id" = "medium"."release" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "label"."id" = "label_alias"."label" AND "release_group"."type" = "release_group_primary_type"."id" AND "country_area"."area" = "release_country"."country" AND "release"."id" = "release_country"."release" AND "release"."packaging" = "release_packaging"."id" AND "artist_credit"."id" = "recording"."artist_credit" AND "artist_credit"."id" = "track"."artist_credit" AND "medium"."id" = "medium_cdtoc"."medium";
