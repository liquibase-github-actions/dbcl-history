# Liquibase Dbcl History Action
Official GitHub Action to run Liquibase Dbcl History in your GitHub Action Workflow. For more information on how dbcl history works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Dbcl History
[PRO] List all rows from the Liquibase Pro 'DATABASECHANGELOGHISTORY' tracking table.
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/dbcl-history@v4.28.0
  with:
    # The JDBC database connection URL
    # string
    # Required
    url: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Sets the output method to "JSON" or "JSON_PRETTY"
    # string
    # Optional
    format: ""

    # Password to use to connect to the database
    # string
    # Optional
    password: ""

    # Username to use to connect to the database
    # string
    # Optional
    username: ""

    # Set to "true" to output all data from "EXECUTEDSQL" and "EXTENSIONS" columns
    # bool
    # Optional
    verbose: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase dbcl history action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/dbcl-history@v4.28.0
    with:
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
