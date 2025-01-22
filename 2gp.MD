## 2nd Generation Packaging
Ideally I'd like to make this a 2nd generation package, whereas right now it is a 1st gen Unmanaged Package.


## Commands to try later
```
sf package create --name="campaign-influence-reports" --package-type=Unlocked --path="force-app" --no-namespace
```

Manually edit the `sfdx-project.json` file so that the force-app is the default package and adjust the version numbering.

```
sf package version create --package "campaign-influence-reports" --installation-key-bypass --code-coverage --json --wait 30 --definition-file="config/project-scratch-def.json"

sf package delete --package="campaign-influence-reports"
```