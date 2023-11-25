SELECT min(artist.id) FROM "artist_ipi", "artist", "area", "iso_3166_2", "iso_3166_1", "area_alias", "place", "iso_3166_3", "area_alias_type", "gender", "place_alias", "country_area", "area_type", "place_type", "release_country", "artist_credit_name", "place_alias_type", "artist_isni", "artist_credit", "artist_type", "track", "recording" WHERE "artist_ipi"."artist" = "artist"."id" AND "artist"."area" = "area"."id" AND "area"."id" = "iso_3166_2"."area" AND "area"."id" = "iso_3166_1"."area" AND "area"."id" = "area_alias"."area" AND "area"."id" = "place"."area" AND "area"."id" = "iso_3166_3"."area" AND "area_alias"."type" = "area_alias_type"."id" AND "artist"."gender" = "gender"."id" AND "place"."id" = "place_alias"."place" AND "area"."id" = "country_area"."area" AND "area"."type" = "area_type"."id" AND "place"."type" = "place_type"."id" AND "country_area"."area" = "release_country"."country" AND "artist"."id" = "artist_credit_name"."artist" AND "place_alias"."type" = "place_alias_type"."id" AND "artist"."id" = "artist_isni"."artist" AND "artist_credit_name"."artist_credit" = "artist_credit"."id" AND "artist"."type" = "artist_type"."id" AND "artist_credit"."id" = "track"."artist_credit" AND "artist_credit"."id" = "recording"."artist_credit" AND "track"."recording" = "recording"."id";

