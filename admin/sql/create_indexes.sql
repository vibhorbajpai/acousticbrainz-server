BEGIN;

CREATE INDEX mbid_ndx_lowlevel ON lowlevel (mbid);
CREATE INDEX build_sha1_ndx_lowlevel ON lowlevel (build_sha1);

CREATE UNIQUE INDEX data_sha256_ndx_lowlevel_json ON lowlevel_json (data_sha256);

CREATE INDEX mbid_ndx_highlevel ON highlevel (mbid);
CREATE INDEX build_sha1_ndx_highlevel ON highlevel (build_sha1);

CREATE UNIQUE INDEX data_sha256_ndx_highlevel_meta ON highlevel_meta (data_sha256);
CREATE UNIQUE INDEX data_sha256_ndx_highlevel_model ON highlevel_model (data_sha256);
CREATE INDEX model_ndx_highlevel_model ON highlevel_model (model);

CREATE UNIQUE INDEX lower_musicbrainz_id_ndx_user ON "user" (lower(musicbrainz_id));

COMMIT;
