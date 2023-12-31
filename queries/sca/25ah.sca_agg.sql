SELECT min(release_group_secondary_type.id) FROM "release_group_secondary_type_join", "release_group_secondary_type", "release_group", "artist_credit", "release", "release_status", "artist_credit_name", "track", "release_unknown_country", "language", "artist", "script", "artist_ipi", "gender", "artist_alias", "release_label", "work_language", "label", "release_country", "label_isni", "artist_alias_type", "release_packaging", "area", "artist_type", "label_ipi" WHERE "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "release_group_secondary_type_join"."release_group" = "release_group"."id" AND "release_group"."artist_credit" = "artist_credit"."id" AND "release_group"."id" = "release"."release_group" AND "artist_credit"."id" = "release"."artist_credit" AND "release"."status" = "release_status"."id" AND "artist_credit"."id" = "artist_credit_name"."artist_credit" AND "artist_credit"."id" = "track"."artist_credit" AND "release"."id" = "release_unknown_country"."release" AND "release"."language" = "language"."id" AND "artist_credit_name"."artist" = "artist"."id" AND "release"."script" = "script"."id" AND "artist"."id" = "artist_ipi"."artist" AND "artist"."gender" = "gender"."id" AND "artist"."id" = "artist_alias"."artist" AND "release"."id" = "release_label"."release" AND "language"."id" = "work_language"."language" AND "release_label"."label" = "label"."id" AND "release"."id" = "release_country"."release" AND "label"."id" = "label_isni"."label" AND "artist_alias"."type" = "artist_alias_type"."id" AND "release"."packaging" = "release_packaging"."id" AND "label"."area" = "area"."id" AND "artist"."type" = "artist_type"."id" AND "label"."id" = "label_ipi"."label";

