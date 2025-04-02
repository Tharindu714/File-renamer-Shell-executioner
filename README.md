# 🔄 File-renamer-Shell-executioner
  
🚀 **Bulk File Renamer** is a simple yet powerful script that helps you **rename multiple files in a directory at once** by replacing a specific text pattern in filenames.  

This project includes **two scripts**:  
- **🖥️ bulk_rename.sh** → Works in **Git Bash (Linux/macOS/Windows with Git Bash installed)**  
- **💻 bulk_rename.ps1** → Works in **PowerShell (Windows)**  

---

## ✨ Features  
✅ Rename **multiple files** in one go  
✅ Works on **Windows, Linux, and macOS**  
✅ Simple **command-line interface**  
✅ **Error handling** for missing files or directories  
✅ Fast and efficient  

---

## 📂 Project Structure  
```Structure
📁 bulk-file-renamer 
  ├── 📄 bulk_rename.sh # Git Bash version (Linux/macOS/Windows) 
     ├── 📄 bulk_rename.ps1 # PowerShell version (Windows) 
        ├── 📄 README.md # Documentation
 ```

## 🔧 How It Works  

Both scripts **replace a specific text in filenames** inside a given directory.  

### **Example Scenario**  
Imagine you have the following files in a folder:
```Structure
📂 C:\Users\My_user_name\Desktop\Bulk Tester 
       ├── sample_Report1.txt 
           ├── sample_Report2.txt 
               ├── sample_Summary.pdf 
                     ├── Notes.txt
```

**You want to replace `"sample"` with `"My_new"`**, so the files will be renamed as:
```Structure
📂 C:\Users\Tharindu\Desktop\Bulk Tester
        ├── My_new_Report1.txt
            ├── My_new_Report2.txt
                 ├── My_new_Summary.pdf
                      ├── Notes.txt (✅ Unchanged- Name not match)
```

## 🚀 How to Run the Script  

### **🛠️ 1. Run in Git Bash (Linux/macOS/Windows with Git Bash installed)**  

### ✅ **Step 1: Open Git Bash**  
Press `Win + S`, type **Git Bash**, and open it.

### ✅ **Step 2: Navigate to the Script Directory** 
_(important :- Clone this repository to Documents)_
```sh
cd "C:\Users\your_user_name\Documents\bulk-file-renamer"
```
### ✅ **Step 3: Give Execution Permission (First Time Only)** 
```sh
chmod +x bulk_rename.sh
```
### ✅ **Step 4: Run the Script** 
```sh
./bulk_rename.sh  //If you need to rename Bulk files

./file_rename.sh  //If you need to rename One File
```
### ✅ **Step 5: Follow the Prompts** 
```sh
=== 🔄 Bulk File Renamer ===
Enter the directory path: C:\Users\Tharindu\Desktop\Bulk Tester
Enter the text to replace: sample
Enter the new text: My_new
✅ Renaming complete!
```
### **💻 2. Run in PowerShell (Windows with Git Bash not installed)**  

### ✅ **Step 1: Open PowerShell**
Press `Win + R`, type `powershell`, and hit Enter.

### ✅ **Step 2: Navigate to the Script Directory**
_(important :- Clone this repository to Documents)_
```powershell
cd "C:\Users\your_user_name\Documents\bulk-file-renamer"
```
### ✅ **Step 3: Allow Script Execution (If Restricted)**

Set-ExecutionPolicy Unrestricted -Scope Process
### ✅ **Step 4: Run the Script**
```powershell
.\bulk_rename.ps1 //If you need to Bulk rename

.\file_rename.ps1  //If you need to file rename
```
### ✅ **Step 5: Follow the Prompts**

```mathematica
=== 🔄 Bulk File Renamer ===
Enter the directory path: C:\Users\Tharindu\Desktop\Bulk Tester
Enter the text to replace: sample
Enter the new text: My_new
✅ Renaming complete!
```

## 🛑 Troubleshooting & FAQs

❓ **Why do I get No such file or directory?**
<br>
🔹 Ensure the directory path is correct and exists.

❓ **Why does nothing happen?**
<br>
🔹 Check if the filenames actually contain the text you're trying to replace.

❓ **`PowerShell` says "Execution Policy Restriction"?**
<br>
🔹 Run:
```powershell
Set-ExecutionPolicy Unrestricted -Scope Process
```
❓ **How do I rename files in subfolders?**
<br>
🔹 Modify the script to search recursively (ask me for help! 😉).

## ❤️ Contributing

Feel free to fork, modify, and improve this project! <br>
For issues or suggestions, create a GitHub Issue.

## 📜 License
This project is open-source and licensed under the MIT License.
