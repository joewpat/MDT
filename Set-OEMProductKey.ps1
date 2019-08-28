#for imaging with OEM licensing
#run as a powershell script task sequence
#more info here https://blogs.technet.microsoft.com/in-teaching-others-we-teach-ourselves/2016/12/13/how-to-deploy-windows-10-with-a-oem-product-key-from-the-bios-with-microsoft-deployment-toolkit/

$ProductKey = (Get-WmiObject -Class SoftwareLicensingService).OA3xOriginalProductKey
iex "cscript /b C:\Windows\System32\slmgr.vbs -ipk $Productkey" 
Start-Sleep 5
iex "cscript /b C:\Windows\System32\slmgr.vbs -ato"
