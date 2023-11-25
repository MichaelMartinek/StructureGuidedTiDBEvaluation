SELECT min(artist.id) FROM "artist_isni", "artist", "artist_type", "artist_alias", "artist_alias_type", "area", "iso_3166_3", "place", "country_area", "place_type", "place_alias", "area_alias", "artist_credit_name", "artist_ipi", "label", "iso_3166_2", "artist_credit", "label_ipi", "release_label", "iso_3166_1", "label_isni", "release_group", "label_type", "area_alias_type", "release_group_primary_type", "release", "area_type", "gender" WHERE "artist_isni"."artist" = "artist"."id" AND "artist"."type" = "artist_type"."id" AND "artist"."id" = "artist_alias"."artist" AND "artist_alias"."type" = "artist_alias_type"."id" AND "artist"."area" = "area"."id" AND "area"."id" = "iso_3166_3"."area" AND "area"."id" = "place"."area" AND "area"."id" = "country_area"."area" AND "place"."type" = "place_type"."id" AND "place"."id" = "place_alias"."place" AND "area"."id" = "area_alias"."area" AND "artist"."id" = "artist_credit_name"."artist" AND "artist"."id" = "artist_ipi"."artist" AND "area"."id" = "label"."area" AND "area"."id" = "iso_3166_2"."area" AND "artist_credit_name"."artist_credit" = "artist_credit"."id" AND "label"."id" = "label_ipi"."label" AND "label"."id" = "release_label"."label" AND "area"."id" = "iso_3166_1"."area" AND "label"."id" = "label_isni"."label" AND "artist_credit"."id" = "release_group"."artist_credit" AND "label"."type" = "label_type"."id" AND "area_alias"."type" = "area_alias_type"."id" AND "release_group"."type" = "release_group_primary_type"."id" AND "release_label"."release" = "release"."id" AND "release_group"."id" = "release"."release_group" AND "artist_credit"."id" = "release"."artist_credit" AND "area"."type" = "area_type"."id" AND "artist"."gender" = "gender"."id";

