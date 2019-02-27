sfdx shane:org:create -f config/project-scratch-def.json -d 1 -s -o df18.booth --userprefix cg1_
sfdx shane:github:package:install --githubuser mshanemc --repo volvo-base
sfdx shane:user:password:set -g User -l User -p DF18*cg1
sfdx force:user:permset:assign -n VehiclesPerms
sfdx force:source:push
sfdx force:apex:execute -f scripts/init.cls
sfdx shane:org:reauth -r --json
sfdx shane:theme:activate -n Volvo
sfdx force:org:open -p lightning/setup/ThemingAndBranding/home