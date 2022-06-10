Deployment
===

> TODO

## Environments

| Name              | Default Value | Description                                                   |
|-------------------|---------------|---------------------------------------------------------------|
| `SECRET_KEY_BASE` | Unset         | The key to encrypt cookies, required to production deployment |

## Settings

| Name                                 | Default Value       | Description                                                 |
|--------------------------------------|---------------------|-------------------------------------------------------------|
| `register_allowlist.path`            | `tmp/allowlist.txt` | The email list file which allows registering in beta mode   |
| `register_allowslit.spreadsheet_key` | `nil`               | The Google Spreadsheet key to locating email list to download |

## Feature Flags

| Name        | Default Value | Description                                      |
|-------------|---------------|--------------------------------------------------|
| `preview`   | `false`       | Allow player to view the unreleased feature      |
| `beta_mode` | `false`       | Enable for beta server for testing the game data |
