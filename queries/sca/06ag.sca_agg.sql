SELECT min(cdtoc.id) FROM "cdtoc", "medium_cdtoc", "medium", "track", "release", "release_status" WHERE "cdtoc"."id" = "medium_cdtoc"."cdtoc" AND "medium_cdtoc"."medium" = "medium"."id" AND "medium"."id" = "track"."medium" AND "medium"."release" = "release"."id" AND "release"."status" = "release_status"."id";

