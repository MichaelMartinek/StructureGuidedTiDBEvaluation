SELECT min(label_alias.type) FROM "label_alias", "label_alias_type", "label", "release_label", "label_isni", "release", "release_group", "label_type", "release_group_secondary_type_join", "script", "artist_credit", "language", "release_unknown_country", "release_group_secondary_type", "release_group_primary_type" WHERE "label_alias"."type" = "label_alias_type"."id" AND "label_alias"."label" = "label"."id" AND "label"."id" = "release_label"."label" AND "label"."id" = "label_isni"."label" AND "release_label"."release" = "release"."id" AND "release"."release_group" = "release_group"."id" AND "label"."type" = "label_type"."id" AND "release_group"."id" = "release_group_secondary_type_join"."release_group" AND "release"."script" = "script"."id" AND "release_group"."artist_credit" = "artist_credit"."id" AND "release"."language" = "language"."id" AND "release"."id" = "release_unknown_country"."release" AND "release_group_secondary_type_join"."secondary_type" = "release_group_secondary_type"."id" AND "release_group"."type" = "release_group_primary_type"."id";

