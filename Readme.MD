# Microsoft Office 2024 Professional Plus LTSC Installer

This project simplifies the deployment of Microsoft Office 2024 Pro Plus LTSC (Long-Term Servicing Channel) using batch scripts and self-extracting executables to download, configure, and install for a seamless installation experience. It adheres to guidelines from Microsoft’s official deployment documentation: [Deploy Office LTSC 2024 Link](https://learn.microsoft.com/en-us/office/ltsc/2024/deploy).

---

## **Overview of the Scripts and SFX Files**

### **Self-Extracting Executables (SFX)**
- **`Office_2024_Pro_32Bit.exe`**
- **`Office_2024_Pro_64Bit.exe`**

These executables are self-contained installers. When executed, they extract the corresponding batch script and immediately run it to automate the installation process.

### **What the Batch Script Does**
1. **Download the Office Deployment Tool**:
   - The script downloads the official Microsoft Office Deployment Tool directly from Microsoft's servers.
2. **Install the Deployment Tool**:
   - It extracts the necessary files from the Office Deployment Tool.
3. **Generate the Configuration File**:
   - The script creates a configuration file tailored for either the 32-bit or 64-bit version of Office 2024 Professional Plus LTSC.
4. **Run the Office Installer**:
   - Using the configuration file, the script downloads and installs Microsoft Office 2024 directly from Microsoft’s servers.

---

## **System Requirements**
- **Operating System:** Windows 10 or later.
- **Architecture:** Match your system with the correct 32-bit or 64-bit installer.
- **Internet Connection:** Required for downloading installation files.
- **Disk Space:** At least 5 GB of free storage.

---

## **How to Use**

### **Using the SFX Executables**
1. Download the correct executable for your system:
   - **32-bit systems:** `Office_2024_Pro_32Bit.exe`
   - **64-bit systems:** `Office_2024_Pro_64Bit.exe`
2. Run the executable.
3. The installer will:
   - Extract and execute the appropriate batch script.
   - Download and install Microsoft Office 2024 Professional Plus LTSC.

### **Using the Batch Scripts Directly**
1. Download either `Install32Bit.bat` or `Install64Bit.bat`.
2. Place the script in an empty folder and execute it.
3. Follow the prompts displayed during installation.

---

## **What If Something Goes Wrong?**
1. **Ensure Internet Connectivity**:
   - The installer requires an active internet connection to download files from Microsoft.
2. **Run as Administrator**:
   - Right-click the executable or batch file and select **Run as Administrator** to ensure proper permissions.
3. **Check Antivirus Software**:
   - Some antivirus programs may block the installer. Temporarily disable such programs if needed.
4. **Troubleshooting Installation Errors**:
   - Verify sufficient disk space (at least 5 GB free).
   - Ensure system compatibility with the selected 32-bit or 64-bit installer.
   - Review error messages for additional clues.

---

## **Disclaimer**
This project is provided as a convenience tool for licensed users of Microsoft Office 2024 Professional Plus LTSC. You must have a valid Microsoft Office license to use this installer.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM, OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

---
