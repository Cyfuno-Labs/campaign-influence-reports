Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

sf project deploy start --source-dir="dev-app"
sf org assign permset --name Campaign_Influence_Cyfuno_Labs
sf org assign permset --name Campaign_Influence_Demo_Data
sf project deploy start --source-dir="force-app"

# setup our initial data set
sf apex run --file scripts/anonApex/setupDemoOrgBot.apex
sf apex run --file scripts/anonApex/setupDemoOrgTeam.apex
sf apex run --file scripts/anonApex/setupExtraUsers.apex
sf apex run --file scripts/anonApex/addAccountTeamMembers.apex


sf org open --path "/lightning/o/Dashboard/home?queryScope=userFoldersCreatedByMe"