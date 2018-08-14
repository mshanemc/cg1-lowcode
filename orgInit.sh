sfdx shane:org:create -f config/project-scratch-def.json -d 1 -s -o df18.booth -u cg1
sfdx shane:github:package:install --githubuser mshanemc --repo volvo-base
sfdx shane:user:password:set -g User -l User -p DF18*cg1
sfdx force:user:permset:assign -n VehiclesPerms
sfdx force:source:push
sfdx force:org:open