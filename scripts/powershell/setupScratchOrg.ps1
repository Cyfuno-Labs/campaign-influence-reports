Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

sf project deploy start --source-dir="dev-app"
sf org assign permset --name Campaign_Influence_Cyfuno_Labs
sf org assign permset --name Campaign_Influence_Demo_Data
sf project deploy start --source-dir="force-app"

sf org open --path "/lightning/o/Dashboard/home?queryScope=userFoldersCreatedByMe"