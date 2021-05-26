--
-- Create audit table
--

CREATE TABLE audit_log (
    audit_log_id       VARCHAR(36) PRIMARY KEY,
    application_name   VARCHAR(256) NOT NULL,
    audit_level        VARCHAR(32) NOT NULL,
    timestamp_created  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    message            TEXT NOT NULL,
    exception_message  TEXT,
    stack_trace        TEXT,
    param              TEXT,
    calling_class      VARCHAR(256) NOT NULL,
    thread_name        VARCHAR(256) NOT NULL,
    version            VARCHAR(256),
    build_time         TIMESTAMP
);

CREATE TABLE audit_param (
    audit_log_id       VARCHAR(36),
    timestamp_created  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    param_key          VARCHAR(256),
    param_value        VARCHAR(3072)
);

CREATE INDEX audit_log_timestamp ON audit_log (timestamp_created);
CREATE INDEX audit_param_log ON audit_param (audit_log_id);
CREATE INDEX audit_param_timestamp ON audit_param (timestamp_created);
CREATE INDEX audit_param_key ON audit_param (param_key);
CREATE INDEX audit_param_value ON audit_param (param_value);