Data Loader
===

## Setup

We are using Google Spreadsheet as the game data source, to access the data from Google we have to setup a service account with the correct permission.

### Service Account

To create a service account, please follow [Google's guide](https://developers.google.com/workspace/guides/create-credentials#service-account) to setup it. And create a JSON format token like below:

```json
{
  "type": "service_account",
  "project_id": "newera-demo",
  "private_key_id": "...",
  "private_key": "...",
  "client_email": "data-loader@newera-demo.iam.gserviceaccount.com",
  "client_id": "...",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/data-loader%40newera-demo.iam.gserviceaccount.com"
}
```

### Grant Permission

After a service account is created, you will get an `email` responsive to that account. Go to your spreadsheet to invite the account with `READONLY` permission.

## Spreadsheet Key

To get the spreadsheet key, copy it from the URL of your spreadsheet.

```
https://docs.google.com/spreadsheets/d/[SPREADSHEET_KEY]/edit#gid=0
```

## Register Allowlist

To test unreleased game data we will enable `beta_mode` which can restrict player registers who are in the allowlist.

```yaml
# config/settings.yml
register_allowlist:
  # ...
  spreadsheet_key: [YOUR_SPREADSHEET_KEY]
```

Or set it via environment variable with `SETTINGS__REGISTER_ALLOWLIST__SPREADSHEET_KEY=[YOUR_SPREADSHEET_KEY]`

After the key exists, you can go to the admin dashboard and click the "refresh allowlist" button to update the list to the latest version.

> Currently is design to single node
