SELECT min(area.id) FROM "release_country", "country_area", "release", "release_label", "release_status", "release_unknown_country", "area", "artist_credit", "artist_credit_name" WHERE "release_country"."country" = "country_area"."area" AND "release_country"."release" = "release"."id" AND "release"."id" = "release_label"."release" AND "release"."status" = "release_status"."id" AND "release"."id" = "release_unknown_country"."release" AND "country_area"."area" = "area"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit";

