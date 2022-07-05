# Generate Reimbursement Folders
## What does this project do?
This project creates folders with beautiful icons for helping you manage your reimbursement claims nicely.
It scaffolds the following structure:

    .
    ├── ...
    ├── reimbursements          # Parent folder
    │   └── 2022                    # Year 2022 folder
    │       └── 1-January           # Jan folder
    │           ├── Communication               # Communication folder
    │           ├── Fitness                     # Fitness folder
    │           ├── Fuel                        # Fuel folder
    │           └── LTA                         # LTA folder
    │       └── 2-February          # Feb folder
    │           ├── Communication
    │           ├── Fitness      
    │           ├── Fuel         
    │           └── LTA          
    │       └── 3-March             # Mar folder
    │           ├── Communication               
    │           ...                 # similarly etc.
    │       ...
    │   └── 2023                # Year 2023 folder, same internal structure as the above folder
    │       └── 1-January            
    │       ...                 
    └── ...


### Node, TS project setup
https://blog.appsignal.com/2022/01/19/how-to-set-up-a-nodejs-project-with-typescript.html


### BASH references
- https://gist.github.com/bradtraversy/ac3b1136fc7d739a788ad1e42a78b610
- https://stackabuse.com/executing-shell-commands-with-node-js/
- https://www.npmjs.com/package/fileicon
- https://manik.cc/2020/05/21/macicons.html

### Create NPX tool references
- https://blog.shahednasser.com/how-to-create-a-npx-tool/
