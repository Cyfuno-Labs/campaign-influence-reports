# project

unlocked package json file: https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_unlocked_pkg_config_file.htm

# Blocker
Can't create a package version.



```
sf package create --name="campaign-influence-reports" --package-type=Unlocked --path="force-app" --no-namespace

sf package version create --package "campaign-influence-reports" --installation-key-bypass --code-coverage --json --wait 30 --definition-file="config/project-scratch-def.json"

sf package delete --package="campaign-influence-reports"
```