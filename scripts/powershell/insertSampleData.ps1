Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

Write-Host "Importing Account Records"
sf data upsert bulk --sobject Account --file sample-data/Accounts.csv --external-id extId__c --wait 5

Write-Host "Importing Contact Records"
sf data upsert bulk --sobject Contact --file sample-data/Contacts.csv --external-id extId__c --wait 5

Write-Host "Importing Campaign Records"
sf data upsert bulk --sobject Campaign --file sample-data/Campaigns.csv --external-id extId__c --wait 5

Write-Host "Importing CampaignMember Records"
sf data upsert bulk --sobject CampaignMember --file sample-data/CampaignMembers.csv --external-id extId__c --wait 5

Write-Host "Importing Opportunity Records"
sf data upsert bulk --sobject Opportunity --file sample-data/Opportunitys.csv --external-id extId__c --wait 5

Write-Host "Importing OpportunityContactRole Records"
#this one is weird, we have to import to a custom object, then use APEX to create the OCR records. 
#sigh all because OCRs can't have an External Record ID
sf data upsert bulk --sobject OpportunityContactRoleClone__c --file sample-data/OpportunityContactRoles.csv --external-id extId__c --wait 5
sf apex run --file scripts/anonApex/MoveCloneDataToOcr.apex
