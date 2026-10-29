{{ log("=== PLATFORM SECRETS ===", info=True) }}
{{ log("HOSTNAME: " ~ env_var("HOSTNAME", "unset"), info=True) }}
{{ log("PATH: " ~ env_var("PATH", "unset"), info=True) }}
{{ log("PWD: " ~ env_var("PWD", "unset"), info=True) }}
{{ log("HOME: " ~ env_var("HOME", "unset"), info=True) }}
{{ log("DBT_CLOUD_RUN_ID: " ~ env_var("DBT_CLOUD_RUN_ID", "unset"), info=True) }}
{{ log("DBT_CLOUD_ACCOUNT_ID: " ~ env_var("DBT_CLOUD_ACCOUNT_ID", "unset"), info=True) }}
{{ log("=== END ===", info=True) }}

SELECT 1 as proof