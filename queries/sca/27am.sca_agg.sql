SELECT min(area.id) FROM "area", "iso_3166_2", "area_alias", "iso_3166_3", "area_alias_type", "place", "artist", "artist_isni", "iso_3166_1", "artist_alias", "artist_alias_type", "artist_ipi", "place_alias", "artist_type", "label", "gender", "label_ipi", "label_type", "place_type", "artist_credit_name", "area_type", "label_alias", "artist_credit", "track", "recording", "place_alias_type", "label_alias_type", "medium" WHERE "area"."id" = "iso_3166_2"."area" AND "area"."id" = "area_alias"."area" AND "area"."id" = "iso_3166_3"."area" AND "area_alias"."type" = "area_alias_type"."id" AND "area"."id" = "place"."area" AND "area"."id" = "artist"."area" AND "artist"."id" = "artist_isni"."artist" AND "area"."id" = "iso_3166_1"."area" AND "artist"."id" = "artist_alias"."artist" AND "artist_alias"."type" = "artist_alias_type"."id" AND "artist"."id" = "artist_ipi"."artist" AND "place"."id" = "place_alias"."place" AND "artist"."type" = "artist_type"."id" AND "area"."id" = "label"."area" AND "artist"."gender" = "gender"."id" AND "label"."id" = "label_ipi"."label" AND "label"."type" = "label_type"."id" AND "place"."type" = "place_type"."id" AND "artist"."id" = "artist_credit_name"."artist" AND "area"."type" = "area_type"."id" AND "label"."id" = "label_alias"."label" AND "artist_credit_name"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "track"."artist_credit" AND "track"."recording" = "recording"."id" AND "artist_credit"."id" = "recording"."artist_credit" AND "place_alias"."type" = "place_alias_type"."id" AND "label_alias"."type" = "label_alias_type"."id" AND "track"."medium" = "medium"."id";

