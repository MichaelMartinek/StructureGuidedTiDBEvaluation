SELECT min(release.id) FROM "release_unknown_country", "release", "artist_credit", "artist_credit_name", "release_packaging" WHERE "release_unknown_country"."release" = "release"."id" AND "release"."artist_credit" = "artist_credit"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "release"."packaging" = "release_packaging"."id";

