#! /bin/bash

# CLEANUP any previous generated data
rm -rf reimbursements

#---------------------------------- CONSTANTS ---------------------------------------------
years=('2022' '2023')
months=('January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December')
things=('Communication' 'Fuel' 'Fitness' 'LTA') # NOTE: this does not work if we use spaces in an item. eg: "Health & Fitness" instead of "Fitness" at index 2 (index starts at 0) does not work
thingIconPaths=('./folder-icons/things/wifi-signal.png' './folder-icons/things/gas-station.png' './folder-icons/things/fitness.png' './folder-icons/things/honeymoon.png')
parentFolderName="reimbursements"
#------------------------------------------------------------------------------------------

#---------------------------------- FUNCTIONS ---------------------------------------------
function setFolderIcon() {
    fileicon set $1 $2 # $1 = folder path, $2 = icon path
}

function createParentFolder() {
    mkdir -p "${parentFolderName}"
    setFolderIcon "${parentFolderName}" "./folder-icons/reimbursements.png" # run `brew install fileicon` before using this command
}

function createThingsFolders() {
    for ((k = 0; k < ${#things[@]}; k++)); do
        thingFolderPath="${parentFolderName}/$1/$2/${things[$k]}" # `$1` represents `year` argument, `$2` represents `month` argument
        mkdir -p ${thingFolderPath}
        setFolderIcon ${thingFolderPath} "${thingIconPaths[$k]}"
    done
}

function createMonthFolders() {
    for ((j = 0; j < ${#months[@]}; j++)); do
        monthFolderName="$(($j + 1))-${months[$j]}" # $i represents `index` of the array
        monthFolderPath="${parentFolderName}/$1/${monthFolderName}" # `$1` represents `year` argument

        mkdir -p ${monthFolderPath} 
        setFolderIcon ${monthFolderPath} "./folder-icons/months/${months[$j]}.png"

        createThingsFolders $1 "${monthFolderName}"
    done
}
#------------------------------------------------------------------------------------------


# STEP 1: Create parent folder and set it's icon
createParentFolder # <--- function call, lol bash script syntax is weird
##############

# STEP 2: Loop over years and set their icons
for (( i = 0; i < ${#years[@]}; ++i )); do
    echo "🙌🏻 Creating folder: ${years[i]}"
    yearFolderName="${years[i]}"
    yearFolderPath="${parentFolderName}/${yearFolderName}"

    mkdir -p "${yearFolderPath}" # -p: A flag which enables the command to create parent directories as necessary. If the directories exist, no error is specified.

    fileicon set "${yearFolderPath}" "./folder-icons/year/${yearFolderName}.png" # NOTE: don't forget to add new icons for respective years as years pass by :p

    # STEP 3: Create month folders and set their icons
    createMonthFolders "${yearFolderName}" # <--- another function call, lol
done

echo "✅ Done creating ${parentFolderName} and it's subfolders!"
echo "✨ You can copy and paste the folder to any other place now! ✨"