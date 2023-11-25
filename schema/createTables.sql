
 CREATE TABLE `alternative_release_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `annotation` (
  `id` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `text` text DEFAULT NULL,
  `changelog` varchar(255) DEFAULT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `type` int(11) DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `ended` char(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `area_alias` (
  `id` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `area_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `area_annotation` (
  `area` int(11) NOT NULL,
  `annotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `area_gid_redirect` (
  `gid` char(36) NOT NULL,
  `new_id` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `area_tag` (
  `area` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `area_tag_raw` (
  `area` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `is_upvote` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `area_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `ended` char(1) NOT NULL DEFAULT '0',
  `begin_area` int(11) DEFAULT NULL,
  `end_area` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_alias` (
  `id` int(11) NOT NULL,
  `artist` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_annotation` (
  `artist` int(11) NOT NULL,
  `annotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_credit` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `artist_count` smallint(6) NOT NULL,
  `ref_count` int(11) DEFAULT '0',
  `created` timestamp DEFAULT CURRENT_TIMESTAMP,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_credit_name` (
  `artist_credit` int(11) NOT NULL,
  `position` smallint(6) NOT NULL,
  `artist` int(11) NOT NULL,
  `name` text NOT NULL,
  `join_phrase` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_gid_redirect` (
  `gid` char(36) NOT NULL,
  `new_id` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_ipi` (
  `artist` int(11) NOT NULL,
  `ipi` char(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_isni` (
  `artist` int(11) NOT NULL,
  `isni` char(16) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_meta` (
  `id` int(11) NOT NULL,
  `rating` smallint(6) DEFAULT NULL,
  `rating_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_rating_raw` (
  `artist` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `rating` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_tag` (
  `artist` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_tag_raw` (
  `artist` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `is_upvote` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `artist_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `cdtoc` (
  `id` int(11) NOT NULL,
  `discid` char(28) NOT NULL,
  `freedb_id` char(8) NOT NULL,
  `track_count` int(11) NOT NULL,
  `leadout_offset` int(11) NOT NULL,
  `track_offset` text NOT NULL,
  `degraded` char(1) NOT NULL DEFAULT '0',
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `country_area` (
  `area` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `cover_art` (
  `id` bigint(20) NOT NULL,
  `release` int(11) NOT NULL,
  `comment` text NOT NULL,
  `edit` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `date_uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `mime_type` text NOT NULL,
  `filesize` int(11) DEFAULT NULL,
  `thumb_250_filesize` int(11) DEFAULT NULL,
  `thumb_500_filesize` int(11) DEFAULT NULL,
  `thumb_1200_filesize` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `art_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `image_type` (
  `mime_type` text NOT NULL,
  `suffix` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `edit` (
  `id` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `autoedit` smallint(6) NOT NULL DEFAULT '0',
  `open_time` timestamp DEFAULT CURRENT_TIMESTAMP,
  `close_time` timestamp NULL DEFAULT NULL,
  `expire_time` timestamp NOT NULL,
  `language` int(11) DEFAULT NULL,
  `quality` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `privs` int(11) DEFAULT '0',
  `email` varchar(64) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `member_since` timestamp DEFAULT CURRENT_TIMESTAMP,
  `email_confirm_date` timestamp NULL DEFAULT NULL,
  `last_login_date` timestamp DEFAULT CURRENT_TIMESTAMP,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `birth_date` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `ha1` char(32) NOT NULL,
  `deleted` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_collection` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `editor` int(11) NOT NULL,
  `name` text NOT NULL,
  `public` char(1) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_collection_area` (
  `collection` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `added` timestamp DEFAULT CURRENT_TIMESTAMP,
  `position` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_collection_artist` (
  `collection` int(11) NOT NULL,
  `artist` int(11) NOT NULL,
  `added` timestamp DEFAULT CURRENT_TIMESTAMP,
  `position` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_collection_event` (
  `collection` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `added` timestamp DEFAULT CURRENT_TIMESTAMP,
  `position` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_collection_label` (
  `collection` int(11) NOT NULL,
  `label` int(11) NOT NULL,
  `added` timestamp DEFAULT CURRENT_TIMESTAMP,
  `position` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_collection_recording` (
  `collection` int(11) NOT NULL,
  `recording` int(11) NOT NULL,
  `added` timestamp DEFAULT CURRENT_TIMESTAMP,
  `position` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_collection_release` (
  `collection` int(11) NOT NULL,
  `release` int(11) NOT NULL,
  `added` timestamp DEFAULT CURRENT_TIMESTAMP,
  `position` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_collection_release_group` (
  `collection` int(11) NOT NULL,
  `release_group` int(11) NOT NULL,
  `added` timestamp DEFAULT CURRENT_TIMESTAMP,
  `position` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_collection_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `entity_type` varchar(50) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_collection_work` (
  `collection` int(11) NOT NULL,
  `work` int(11) NOT NULL,
  `added` timestamp DEFAULT CURRENT_TIMESTAMP,
  `position` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_language` (
  `editor` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `fluency` enum('basic','intermediate','advanced','native') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_subscribe_artist` (
  `id` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `artist` int(11) NOT NULL,
  `last_edit_sent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_subscribe_label` (
  `id` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `label` int(11) NOT NULL,
  `last_edit_sent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `editor_subscribe_series` (
  `id` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `series` int(11) NOT NULL,
  `last_edit_sent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `edit_artist` (
  `edit` int(11) NOT NULL,
  `artist` int(11) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `edit_data` (
  `edit` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `edit_recording` (
  `edit` int(11) NOT NULL,
  `recording` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `edit_release` (
  `edit` int(11) NOT NULL,
  `release` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `edit_release_group` (
  `edit` int(11) NOT NULL,
  `release_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `edit_work` (
  `edit` int(11) NOT NULL,
  `work` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `cancelled` char(1) NOT NULL DEFAULT '0',
  `setlist` text DEFAULT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `event_alias` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `event_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `event_annotation` (
  `event` int(11) NOT NULL,
  `annotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `event_gid_redirect` (
  `gid` char(36) NOT NULL,
  `new_id` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `event_meta` (
  `id` int(11) NOT NULL,
  `rating` smallint(6) DEFAULT NULL,
  `rating_count` int(11) DEFAULT NULL,
  `event_art_presence` enum('absent','present','darkened') NOT NULL DEFAULT 'absent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `event_rating_raw` (
  `event` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `rating` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `event_tag` (
  `event` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `event_tag_raw` (
  `event` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `is_upvote` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `event_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `genre_alias` (
  `id` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `genre_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `instrument` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `type` int(11) DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `instrument_alias` (
  `id` int(11) NOT NULL,
  `instrument` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `instrument_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `instrument_annotation` (
  `instrument` int(11) NOT NULL,
  `annotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `instrument_tag` (
  `instrument` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `instrument_tag_raw` (
  `instrument` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `is_upvote` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `instrument_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `iso_3166_1` (
  `area` int(11) NOT NULL,
  `code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `iso_3166_2` (
  `area` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `iso_3166_3` (
  `area` int(11) NOT NULL,
  `code` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `isrc` (
  `id` int(11) NOT NULL,
  `recording` int(11) NOT NULL,
  `isrc` char(12) NOT NULL,
  `source` smallint(6) DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `iswc` (
  `id` int(11) NOT NULL,
  `work` int(11) NOT NULL,
  `iswc` varchar(15) DEFAULT NULL,
  `source` smallint(6) DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `label_code` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label_alias` (
  `id` int(11) NOT NULL,
  `label` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label_annotation` (
  `label` int(11) NOT NULL,
  `annotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label_gid_redirect` (
  `gid` char(36) NOT NULL,
  `new_id` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label_ipi` (
  `label` int(11) NOT NULL,
  `ipi` char(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label_isni` (
  `label` int(11) NOT NULL,
  `isni` char(16) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label_meta` (
  `id` int(11) NOT NULL,
  `rating` smallint(6) DEFAULT NULL,
  `rating_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label_rating_raw` (
  `label` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `rating` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label_tag` (
  `label` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label_tag_raw` (
  `label` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `is_upvote` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `label_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `iso_code_2t` char(3) DEFAULT NULL,
  `iso_code_2b` char(3) DEFAULT NULL,
  `iso_code_1` char(2) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `frequency` smallint(6) NOT NULL DEFAULT '0',
  `iso_code_3` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `link_type` int(11) NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `attribute_count` int(11) NOT NULL DEFAULT '0',
  `created` timestamp DEFAULT CURRENT_TIMESTAMP,
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `link_attribute` (
  `link` int(11) NOT NULL,
  `attribute_type` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `link_attribute_credit` (
  `link` int(11) NOT NULL,
  `attribute_type` int(11) NOT NULL,
  `credited_as` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `link_attribute_text_value` (
  `link` int(11) NOT NULL,
  `attribute_type` int(11) NOT NULL,
  `text_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `link_attribute_type` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `root` int(11) NOT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `gid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `link_creditable_attribute_type` (
  `attribute_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `link_text_attribute_type` (
  `attribute_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `link_type` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `gid` char(36) NOT NULL,
  `entity_type0` varchar(50) NOT NULL,
  `entity_type1` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `link_phrase` varchar(255) NOT NULL,
  `reverse_link_phrase` varchar(255) NOT NULL,
  `long_link_phrase` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `is_deprecated` char(1) NOT NULL DEFAULT '0',
  `has_dates` char(1) NOT NULL DEFAULT '1',
  `entity0_cardinality` smallint(6) NOT NULL DEFAULT '0',
  `entity1_cardinality` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `link_type_attribute_type` (
  `link_type` int(11) NOT NULL,
  `attribute_type` int(11) NOT NULL,
  `min` smallint(6) DEFAULT NULL,
  `max` smallint(6) DEFAULT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_area_area` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_area_event` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_area_genre` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_area_instrument` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_area_recording` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_area_release` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_area_series` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_area_url` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_area_work` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_artist_artist` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_artist_event` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_artist_label` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_artist_place` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_artist_recording` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_artist_release` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_artist_release_group` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_artist_series` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_artist_url` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_artist_work` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_event_event` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_event_place` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_event_recording` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_event_release` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_event_release_group` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_event_series` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_event_url` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_event_work` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_label_label` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_label_place` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_label_recording` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_label_release` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_label_series` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_label_url` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_label_work` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_place_place` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_place_recording` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_place_release` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_place_series` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_place_url` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_place_work` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_recording_recording` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_recording_release` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_recording_series` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_recording_url` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_recording_work` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_release_group_release_group` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_release_group_series` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_release_group_url` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_release_release` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_release_series` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_release_url` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_series_series` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_series_url` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_series_work` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_url_work` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `l_work_work` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `entity0` int(11) NOT NULL,
  `entity1` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `link_order` int(11) NOT NULL DEFAULT '0',
  `entity0_credit` text NOT NULL,
  `entity1_credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `medium` (
  `id` int(11) NOT NULL,
  `release` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `format` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `track_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `medium_cdtoc` (
  `id` int(11) NOT NULL,
  `medium` int(11) NOT NULL,
  `cdtoc` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `medium_format` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `year` smallint(6) DEFAULT NULL,
  `has_discids` char(1) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `medium_index` (
  `medium` int(11) DEFAULT NULL,
  `toc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `orderable_link_type` (
  `link_type` int(11) NOT NULL,
  `direction` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `type` int(11) DEFAULT NULL,
  `address` text NOT NULL,
  `area` int(11) DEFAULT NULL,
  `coordinates` varchar(100) DEFAULT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `place_alias` (
  `id` int(11) NOT NULL,
  `place` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `place_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `place_annotation` (
  `place` int(11) NOT NULL,
  `annotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `place_gid_redirect` (
  `gid` char(36) NOT NULL,
  `new_id` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `place_rating_raw` (
  `place` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `rating` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `place_tag` (
  `place` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `place_tag_raw` (
  `place` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `is_upvote` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `place_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `recording` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `artist_credit` int(11) NOT NULL,
  `length` int(11) DEFAULT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `video` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `recording_alias` (
  `id` int(11) NOT NULL,
  `recording` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `recording_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `recording_annotation` (
  `recording` int(11) NOT NULL,
  `annotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `recording_gid_redirect` (
  `gid` char(36) NOT NULL,
  `new_id` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `recording_meta` (
  `id` int(11) NOT NULL,
  `rating` smallint(6) DEFAULT NULL,
  `rating_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `recording_rating_raw` (
  `recording` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `rating` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `recording_tag` (
  `recording` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `recording_tag_raw` (
  `recording` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `is_upvote` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `artist_credit` int(11) NOT NULL,
  `release_group` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `packaging` int(11) DEFAULT NULL,
  `language` int(11) DEFAULT NULL,
  `script` int(11) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `quality` smallint(6) NOT NULL DEFAULT '-1',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_alias` (
  `id` int(11) NOT NULL,
  `release` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_annotation` (
  `release` int(11) NOT NULL,
  `annotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_country` (
  `release` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `date_year` smallint(6) DEFAULT NULL,
  `date_month` smallint(6) DEFAULT NULL,
  `date_day` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_gid_redirect` (
  `gid` char(36) NOT NULL,
  `new_id` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `artist_credit` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group_alias` (
  `id` int(11) NOT NULL,
  `release_group` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group_annotation` (
  `release_group` int(11) NOT NULL,
  `annotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group_gid_redirect` (
  `gid` char(36) NOT NULL,
  `new_id` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group_meta` (
  `id` int(11) NOT NULL,
  `release_count` int(11) NOT NULL DEFAULT '0',
  `first_release_date_year` smallint(6) DEFAULT NULL,
  `first_release_date_month` smallint(6) DEFAULT NULL,
  `first_release_date_day` smallint(6) DEFAULT NULL,
  `rating` smallint(6) DEFAULT NULL,
  `rating_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group_primary_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group_rating_raw` (
  `release_group` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `rating` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group_secondary_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group_secondary_type_join` (
  `release_group` int(11) NOT NULL,
  `secondary_type` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group_tag` (
  `release_group` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_group_tag_raw` (
  `release_group` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `is_upvote` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_label` (
  `id` int(11) NOT NULL,
  `release` int(11) NOT NULL,
  `label` int(11) DEFAULT NULL,
  `catalog_number` varchar(255) DEFAULT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_meta` (
  `id` int(11) NOT NULL,
  `date_added` timestamp DEFAULT CURRENT_TIMESTAMP,
  `info_url` varchar(255) DEFAULT NULL,
  `amazon_asin` varchar(10) DEFAULT NULL,
  `cover_art_presence` enum('absent','present','darkened') NOT NULL DEFAULT 'absent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_packaging` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_tag` (
  `release` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_tag_raw` (
  `release` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `is_upvote` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `release_unknown_country` (
  `release` int(11) NOT NULL,
  `date_year` smallint(6) DEFAULT NULL,
  `date_month` smallint(6) DEFAULT NULL,
  `date_day` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `script` (
  `id` int(11) NOT NULL,
  `iso_code` char(4) NOT NULL,
  `iso_number` char(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `frequency` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `ordering_type` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `series_alias` (
  `id` int(11) NOT NULL,
  `series` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `series_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `series_annotation` (
  `series` int(11) NOT NULL,
  `annotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `series_gid_redirect` (
  `gid` char(36) NOT NULL,
  `new_id` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `series_ordering_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `series_tag` (
  `series` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `series_tag_raw` (
  `series` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `is_upvote` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `series_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `entity_type` varchar(50) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ref_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `track` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `recording` int(11) NOT NULL,
  `medium` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `number` text NOT NULL,
  `name` text NOT NULL,
  `artist_credit` int(11) NOT NULL,
  `length` int(11) DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `is_data_track` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `url` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `url` text NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `url_gid_redirect` (
  `gid` char(36) NOT NULL,
  `new_id` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `vote` smallint(6) NOT NULL,
  `vote_time` timestamp DEFAULT CURRENT_TIMESTAMP,
  `superseded` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `gid` char(36) NOT NULL,
  `name` text NOT NULL,
  `type` int(11) DEFAULT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_alias` (
  `id` int(11) NOT NULL,
  `work` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text DEFAULT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `sort_name` text NOT NULL,
  `begin_date_year` smallint(6) DEFAULT NULL,
  `begin_date_month` smallint(6) DEFAULT NULL,
  `begin_date_day` smallint(6) DEFAULT NULL,
  `end_date_year` smallint(6) DEFAULT NULL,
  `end_date_month` smallint(6) DEFAULT NULL,
  `end_date_day` smallint(6) DEFAULT NULL,
  `primary_for_locale` char(1) NOT NULL DEFAULT '0',
  `ended` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_alias_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_annotation` (
  `work` int(11) NOT NULL,
  `annotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_attribute` (
  `id` int(11) NOT NULL,
  `work` int(11) NOT NULL,
  `work_attribute_type` int(11) NOT NULL,
  `work_attribute_type_allowed_value` int(11) DEFAULT NULL,
  `work_attribute_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_attribute_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `free_text` char(1) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_attribute_type_allowed_value` (
  `id` int(11) NOT NULL,
  `work_attribute_type` int(11) NOT NULL,
  `value` text DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_gid_redirect` (
  `gid` char(36) NOT NULL,
  `new_id` int(11) NOT NULL,
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_language` (
  `work` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `edits_pending` int(11) NOT NULL DEFAULT '0',
  `created` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_meta` (
  `id` int(11) NOT NULL,
  `rating` smallint(6) DEFAULT NULL,
  `rating_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_rating_raw` (
  `work` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `rating` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_tag` (
  `work` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_tag_raw` (
  `work` int(11) NOT NULL,
  `editor` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `is_upvote` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

 CREATE TABLE `work_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `child_order` int(11) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `gid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
