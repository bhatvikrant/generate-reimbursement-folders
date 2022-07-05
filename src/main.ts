import fse from "fs-extra";
import { execSync } from "child_process";

const PARENT_FOLDER = "TOTO";

function generateFolders() {
  try {
    if (!fse.existsSync(PARENT_FOLDER)) {
      execSync(`./bash/gen-folders.sh`, { stdio: "inherit" });
    }
  } catch (err) {
    console.error(err);
  }
}

generateFolders();
