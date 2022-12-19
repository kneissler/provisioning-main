# GCP Project/Folder Structure #

⚠️
*This file serves two purposes simultaneously:*
 1. *documentation* 
 2. *source for generated terraform code*

*Be aware that committing changes (to main branch) might lead to changes in the cloud!*
⚠️

## OrganizationTree ##

The following section defines the organization tree (folders and projects)

```yaml
kneissler-com:
  folder1:
    subfolder:
      - kneiss-test-xyz-001: data
  folder2:
    - kneiss-test-xyz-003: playground
    - kneiss-test-xyz-002: mlops
```

Projects names must follow the following naming conventions:
- tbd

Project names are keys on leave nodes, the value can have the following values:
- data: description, which APIs are enabled by default
- mlops: description, which APIs are enabled by default
- playground: in the ownership of whole teams, team rules apply

Rules for playgrounds:
- There should be no no playgrounds for individual team members
- Rules for creation of resources in playgrounds and methods (via self-service UI, API calls, terraform, ...) are setup by the teams, individually
- Playgorunds must not continuously incur significant costs
- No prod and no dev activities in playground, only scouting, exploring, POC-ing
- When a team dissolves, soplits or gets renamed, the corresponding playground will be put on the to-be-destroy-soon list and replaced by empty, correctly named descendants (its the new team(s)' responsibility to save or migrate needed resources in the playground).

## Organization ID ##

The following block declares the ID of the organization (used as parent for the root node in the organization tree):

```yaml
organization-id: 727520233085
```

TDOD: replace with Breuninger --> organization-id: 722026089310


## Billing accounts assignment ##

The following table assigns folders to billing accounts.

| Folder        | BillingAccount        |
|---------------|-----------------------|
| kneissler-com | 01F224-FCDFA6-4BF1D6	 |
| subfolder     | 01F224-FCDFA6-4BF1D6  |

Note: 
- All projects in the sub-tree with specified folder as root will be assigned to the corresponding billimng account
- If multiple conflicting sub tree assignments occur in the table, the deepest wins (furthest away from the organization root)
- TBD what happens if a project gets re-assigned to a different place in in the tree with a different account?


