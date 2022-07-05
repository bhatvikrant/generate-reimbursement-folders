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
    
## Video walkthrough of the folders:
https://user-images.githubusercontent.com/50735025/177342949-a583af8e-379f-48d7-a64f-ec328fbd73c7.mov

## Why did I create this project?
Like every other employee I had some reimbursement claims for which I have to upload bills every month in an internal portal at Razorpay.
Many times over the past few months I had to look back and find what were the bills that I had uploaded for a specific month, but there was no record of that since I usually delete the bills as soon as I upload them on the portal (ideally the portal should allow me to view the history of submitted bills, but that's out of my control). Hence, initially I manually built a folder inside which I made another 12 folders (for 12 months) and inside every `months` folder I built another 4 folders (by the name of various reimbursement claims i.e fuel, fitness etc.). But very quickly I realized that managing this manually is not very scalable and I have to do a lot of repetetive copy paste every financial year.

## Node, TS project setup
https://blog.appsignal.com/2022/01/19/how-to-set-up-a-nodejs-project-with-typescript.html


## BASH references
- https://gist.github.com/bradtraversy/ac3b1136fc7d739a788ad1e42a78b610
- https://stackabuse.com/executing-shell-commands-with-node-js/
- https://www.npmjs.com/package/fileicon
- https://manik.cc/2020/05/21/macicons.html

## Create NPX tool references
- https://blog.shahednasser.com/how-to-create-a-npx-tool/








