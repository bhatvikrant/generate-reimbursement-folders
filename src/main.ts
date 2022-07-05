import fse from "fs-extra";
import { exec } from "child_process";

const PARENT_FOLDER = "reimbursements";

function generateFolders() {
  console.log("STARTING");
  try {
    if (!fse.existsSync(PARENT_FOLDER)) {
      fse.mkdirSync(PARENT_FOLDER);
      fse.mkdirSync(`/${PARENT_FOLDER}/test`);

      exec("cd reimbursements && ls -la", (error, stdout, stderr) => {
        if (error) {
          console.log(`error: ${error.message}`);
          return;
        }
        if (stderr) {
          console.log(`stderr: ${stderr}`);
          return;
        }
        console.log(`stdout: ${stdout}`);
      });
    }
  } catch (err) {
    console.error(err);
  }
  // const folderName = "reimbursements";
  // try {
  //   if (!fse.existsSync(folderName)) {
  //     fse.mkdirSync(folderName);
  //   }
  // } catch (err) {
  //   console.error(err);
  // }
}

generateFolders();
