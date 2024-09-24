# Installation

Requirements:

- Windows operating system
- Installed Microsoft Office Excel
- Internet connection

!!! warning 
    Since this is not a native Windows application, you must install a digital code certificate **before** installing the Add-in. See instructions [below](#install).

## Install

To install the WingChecker VSTO Excel Add-in follow these steps:

1. **Download the Installer:** You can download the installer file from [**here**](../files/WingChecker/setup.exe){:download="WingChecker.exe"}.

    [Download installer](../files/WingChecker/setup.exe){:download="WingChecker.exe" .md-button .md-button--primary }

### Install the Digital Code Certificate

1. Right-click on the downloaded *WingChecker.exe* and select **Properties**. 
2. In the top menu, select **Digital Signatures**. 
3. From the Signature list, select the digital signature named `LEGION\mitja` and click on **Details**.

    ![Image title](../images/installer_digital_signature.png){ width=50%}

4. A new window opens. Click on **View Certififcate**.

    ![Image title](../images/installer_view_certificate.png){ width=50%}

5. In a new window select **Install Certificate**.

    ![Image title](../images/installer_install_certificate.png){ width=50%}

6. Certificate installation wizzard opens. Select **Current User** and click **Next**.

    ![Image title](../images/certificate_wizzard_1.png){ width=50%}

7. **Warning!** This step is very important for successful installation. 
    
    Select **Place all certififcates in the following store**, then click **Browse** and look for **Trusted People**. Select **OK** and click **Next**.

    ![Image title](../images/certififcate_trusted_people.png){ width=50%}

8. Select **Finish** and wait for success message.

    ![Image title](../images/certificate_finish.png){ width=50%}

9. Close all windows oppened in the proccess.

### Install AddIn

1. **Run the installer:** Double-click on the downloaded installer to start.
2. **Follow the Installation Prompts:** Accept any warnings or prompts from your operating system and wait for the installation to complete.
    
    ??? tip "Common Installation Prompts"

        Since this is not a native Windows application, your operating system might warn you before installation.
        ![Image title](../images/install_more_info.png){ width=70%}

        If that happens, click on **More info** and select **Run anyway**.
        ![Image title](../images/install_run.png){ width=70%}

        Installation prompt will pop up. Select **Install** and wait untill the installation process is completed.
        ![Image title](../images/installastion_verified.png){ width=70%}

        
### Verify installation

To verify installation:

1. **Launch a New Excel Instance:** Open a new Excel workbook.

If the installation was successful, the WingChecker Add-in will be visible in the **Add-ins** tab of the Excel ribbon.

![Image title](../images/verify_installation.png){ width=70%}

## Update

Excel checks for an update every time you launch a new instance. If a new version of **WingChecker** is available, it will automatically install it.

## Uninstall

To uninstall the WingChecker VSTO Excel Add-in, follow these steps:

1. **Access the Control Panel:** Open the Control Panel on your Windows system.
2. **Locate Add/Remove Programs:** Find and click on the "Add or Remove Programs" option.
3. **Uninstall WingChecker:** Locate "WingChecker" in the list of installed programs and click the "Uninstall" button.

!!! info
    If you encounter any issues during the installation or uninstallation process, please refer to our [support team](../support/support.md).
