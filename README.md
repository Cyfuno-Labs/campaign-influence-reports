# Campaign Influence Dashboard Accelerator

This accelerator was created to give you a starting point for your Campaign Influence Reporting journey. It comes with 3 dashboards:

- **Campaign Influence - Example Dashboard** - This is your head start for creating a Dashboard you can share with your team! Adjust and make it your own!
- **Campaign Influence - Model Comparison** - This shows a side-by-side comparison of Campaign Influence for 4 different models.
    - First Touch
    - Last Touch
    - Even Distribution
    - Primary Campaign Source
- **Campaign Influence - Troubleshooting** - Get help identifying where your data might be short, as well as links to potential fixes!

## Installation

This accelerator is an **unmanaged package** meaning there is no support for updates later on. This should be OK though, as the first thing you'll start doing upon installation is making your own changes to everything!

- [Production](https://login.salesforce.com/packaging/installPackage.apexp?p0=04tHp000001WqZi)
- [Sandbox](https://test.salesforce.com/packaging/installPackage.apexp?p0=04tHp000001WqZi)

## What's in the box?
This accelerator comes with:
- 1 Dashboard Folder
- 3 Dashboards
- 2 Report Folders (nested within another)
- 30 Reports
- 1 Logo

There is no code, no flows, no automations, nothing that will change your data.

## Developer Info
Don't want to work with the Unmanaged package and want to crack open this repository a bit? You are our kind of people!

This SFDX project is split into 2 source folders
- **force-app** - The "deliverable" pieces of this accelerator
- **dev-app** - Metadata used to support developers working in Scratch Orgs, mostly to support loading in sample data

For development purposes, there are a couple of extra folders in this project
- **scripts** - contains an easy way to setup a scratch org once it has been created. Just issue `./scripts/powershell/setupScratchOrg.ps1` (if you are a Windows user, we haven't made scripts for other OSs yet)
- **sample-data** - contains records that will get loaded into various objects.