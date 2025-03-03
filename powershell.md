# PowerShell résumé 

---
## Compilation & lancement

on lance avec `powershell script.ps1`

---
## Types

*primitif*
```powershell
	[string] $hello = "hello";
	[int32] $u = 3
```

*defini par l'utilisateur*
```powershell

```
---
## Tableau et collection
```powershell
	[int[]]$table=1,2,3;
	$h1 = @{ FirstName = "James"; LastName = "Anderson"; IDNum = 123 } 
	$h1.FirstName # designates the key FirstName 
	$h1["LastName"] # designates the associated value for key LastName
```
---
## Expression

*operateur booleen*

| symbole | definition |
| -- | -- |
| &&   | et                              |
| \|\|   | ou                              |
| ^    | xou                             |
| !    | non                             |
| ==   | egalité                         |
| !=   | inegalité                       |
|  >   | sup                             |
| >=   | supOuEgal                       |
|  <   | inf                             |
| <=   | infOuEgal                       |

*operateur mathématique*

| symbole | definition |
|--|--|
|  +   | addition                        |
|  -   | negation                        |
|  *   | multiplication                  |
|  /   | division                        |
|  %   | modulo                          |

*autre symboles*

| symbole | definition |
|--|--|
|  =   | affectation                     |
|  :   | switch/label/else ternaire      |
|  ... | nbr variable d'argument         |
|  {}  | block                           |
|  []  | tableau                         |
|  #   | macro                           |
|  &   | adresse de ...                  |
|  ?   | opération ternaire              |
|  ->  | attribut d'une adresse de structure              |

---
## Condition
```powershell
	if () {
	
	}
	elseif () {
	
	}
	else {
	
	}
```
---
### Boucles
```powershell
	while() {
	}
	
	for () {
	}

	forEach() {
	}
```
---
### Function/Sous-programme
```powershell
	function name {
	    
	}
```
---
## Package
```C
	//code
```
---
## Préprocesseur/Macro
```C
	//code
```
---
## Exception
```C
	//code
```
---
## Multithread/task
```C
	//code
```
---
## Objet
```powershell
class Contact
{
    # Optionally, add attributes to prevent invalid values
    [ValidateNotNullOrEmpty()][string]$First
    [ValidateNotNullOrEmpty()][string]$Last
    [ValidateNotNullOrEmpty()][string]$Phone

    # optionally, have a constructor to 
    # force properties to be set:
    Contact($First, $Last, $Phone) {
       $this.First = $First
       $this.Last = $Last
       $this.Phone = $Phone
    }
}

# si il n'y a pas de constructor on peut caster une hashmap
$C = [Contact]@{
   First = "Joel"
   Last = "Bennett"
}
```

---
## Mot de language
| nom | alias | def |
| --- | ----- | --- |
|<div style="background-color:green;">A</div>| 							| |
|         Get-Acl                  	 		 | 							| Get permission settings for a file or registry key. |
|         Set-Acl                    		 | 							| Set permissions. |
| Active Directory      			 		 | 							| Account,  Computer, Group and User cmdlets. |
|         Get-Alias           		 		 | gal   					| Return alias names for Cmdlets. |
|      Export-Alias          		 		 | epal						| Export currently defined aliases to a file. |
|      Import-Alias          		 		 | ipal						| Import an alias list from a file. |
|         New-Alias           		 		 | nal   					| Create a new alias. |
|         Set-Alias           		 		 | sal   					| Create or change an alias. |
|         Get-AppvClientPackage      		 |							| Return App-V Client Packages. |
|         Get-AppxPackage            		 |							| List the app packages installed in a user profile. |
|      Remove-AppxPackage            		 |							| Remove an app package from a user account. |
|         Add-AppxProvisionedPackage 		 | 							| |
|    Compress-Archive                		 | 							| Create a new archive/zipped file. [PS 5+] |
|      Expand-Archive                		 | 							| Extract files from an archive (zipped) file [PS 5+] |
|         Get-AuthenticodeSignature  		 | 							| Get the signature object associated with a file. |
|         Set-AuthenticodeSignature  		 | 							| Place a signature in a .ps1 script or other file. |
|<div style="background-color:green;">B</div>| 							| |
|      Backup-GPO             	     		 | 							| Backup group policy objects. (GPOs) |
|             Begin                  		 | 							| Function BEGIN block. |
|             BITS                   		 | 							| Background Intelligent Transfer Service cmdlets. |
|      Enable-BitLocker           	 		 | 							| Enable encryption for a BitLocker volume. |
|      Enable-BitLockerAutoUnlock 	 		 | 							| Enable automatic unlocking for a BitLocker volume. |
|     Disable-BitLocker           	 		 | 							| Disable encryption for a BitLocker volume. |
|      Resume-Bitlocker           	 		 | 							| Resume Bitlocker encryption for the specified volume. |
|     Suspend-BitLocker           	 		 | 							| Suspend Bitlocker encryption for the specified volume. |
|         Add-BitLockerKeyProtector  		 | 							| Add a key protector for a BitLocker volume. |
|      Remove-BitLockerKeyProtector  		 |							| Remove a key protector from a BitLocker volume. |
|         Get-BitLockerVolume     	 		 | 							| Get information about volumes BitLocker can protect. |
|             Break                	 		 | 							| Exit a program loop. |
|<div style="background-color:green;">C</div>| 							| |
|             Catch                  		 | 							| Handle a terminating error within a scriptblock. |
|      Export-Certificate        	 		 | 							| Export a certificate from a certificate store into a file. |
|         Get-Certificate        	 		 | 							| Submit/retrieve a certificate request to an enrollment server and install. |
|      Import-Certificate        	 		 | 							| Import one or more certificates into a certificate store. |
|         Set-Location				 		 | cd/chdir/sl				| Set the current working location. |
|         Get-ChildItem 			 		 | dir/ls/gci 				| Get child items (contents of a folder or registry key). |
|       Clear-Host  				 		 | clear/cls  				| Clear the screen. |
|       Clear-Item       			 		 | cli   					| Remove content from a variable or an alias. |
|         Get-CimAssociatedInstance  		 | 							| Retrieve CIM instance by an association. |
|         Get-CimClass   			 		 | gcls  					| Get a list of CIM classes in a specific namespace. |
|    Register-CimIndicationEvent	 		 | 							| Subscribe to indications using a filter or query expression. |
|         New-CimInstance		     		 | ncim  					| Create a new instance of a class. |
|         Get-CimInstance			 		 | gcim  					| Get a managed resource (storage, network, software etc). |
|      Remove-CimInstance			 		 | rcim  					| Remove a CIM instance from a computer. |
|         Set-CimInstance			 		 | scim  					| Modify a CIM instance on a CIM server. |
|      Invoke-CimMethod  			 		 | icim  					| Invoke a method of a CIM class or CIM instance. |
|         Get-CimSession 			 		 | gcms  					| Get current CIM session objects. |
|         New-CimSession 			 		 | ncms  					| Create a CIM session. |
|         New-CimSessionOption	     		 |    						| Advanced options for New-CimSession. |
|      Remove-CimSession 			 		 | rcms  					| Remove one or more CIM session objects. |
|         Get-Clipboard          	 		 | 							| Get the current Windows clipboard entry. |
|         Set-Clipboard          	 		 | 							| Set the current Windows clipboard entry. |
|         Get-Command    			 		 |  gcm  					| Retrieve basic information about a command. |
|      Invoke-Command    			 		 |  icm  					| Run command. |
|        Show-Command    			 		 | shcm  					| Create PowerShell commands in a graphical command window. |
|     Measure-Command           	 		 | 							| Measure the running time of a script block or cmdlet. |
|       Trace-Command           	 		 | 							| Trace an expression or command. |
|         Add-Computer          	 		 | 							| Add a computer to the domain. |
|  Checkpoint-Computer          	 		 | 							| Create a system restore point (XP) |
|      Remove-Computer          	 		 | 							| Remove the local computer from a workgroup or domain. |
|      Rename-Computer          	 		 | 							| Rename a computer. |
|     Restart-Computer          	 		 | 							| Restart the operating system on a computer. |
|     Restore-Computer          	 		 | 							| Restore the computer to a previous state. |
|        Stop-Computer          	 		 | 							| Stop (shut down) a computer. |
|         Get-ComputerInfo      	 		 | 							| Get system and operating system properties. |
|      Reset-ComputerMachinePassword 		 | 							| Reset the machine account password for the computer. |
|        Test-ComputerSecureChannel  		 | 							| Test and repair the secure channel to the domain. |
|         Add-Content      			 		 | ac						| Add to the content of the item. |
|         Get-Content   			 		 | cat/type/gc				| Get content from item (specific location). |
|         Set-Content      			 		 | sc   					| Set content in the item (specific location). |
|       Clear-Content     			 		 | clc   					| Remove content from a file/item. |
|             Continue          	 		 | 							| Skip just this iteration of a loop. |
|      Enable-ComputerRestore   	 		 | 							| Enable System Restore on a drive. |
|     Disable-ComputerRestore   	 		 | 							| Disable System Restore on a drive. |
|         Get-ComputerRestorePoint   		 | 							| Get the restore points on the local computer. |
|        Test-Connection        	 		 | 							| Ping one or more computers. |
| ConvertFrom-CSV               	 		 | 							| Convert object properties (in CSV format) into CSV objects. |
|   ConvertTo-CSV               	 		 | 							| Convert .NET Framework objects into CSV variable-length strings. |
| ConvertFrom-Json              	 		 | 							| Convert a JSON-formatted string to a custom object. |
|   ConvertTo-Json              	 		 | 							| Convert an object to a JSON-formatted string. |
|   ConvertTo-Html              	 		 | 							| Convert the input into an HTML table. |
|   ConvertTo-Xml               	 		 | 							| Convert the input into XML. |
| ConvertFrom-String      			 		 | cfs   					| Extract and parse structured properties from a string. |
| ConvertFrom-StringData        	 		 | 							| Convert a string containing key and value pairs into a hash table. |
| ConvertFrom-SecureString      	 		 | 							| Convert a secure string into an encrypted standard string. |
|   ConvertTo-SecureString      	 		 | 							| Convert an encrypted standard string into a secure string. |
|        Copy-Item 					 		 | copy/cp/ci				| Copy an item from a namespace location. |
|      Export-Counter             	 		 | 							| Export Performance Counter data to log files. |
|         Get-Counter             	 		 | 							| Get performance counter data. |
|      Import-Counter             	 		 | 							| Import performance counter log files. |
|         Get-Credential             		 | 							| Get a security credential (username/password). |
|         Get-Culture                		 | 							| Get region information (language and keyboard layout). |
|         Set-Culture                		 | 							| Set the user culture for the current user account. |
|<div style="background-color:green;">D</div>| 							| |
|         Get-ChildItem   			 		 | Dir/ls/gci				| Get child items (contents of a folder or registry key). |
|         Get-Date                   		 | 		 					| Get current date and time. |
|         Set-Date                   		 | 		 					| Set system time on the host system. |
|       Clear-Disk                	 		 | 		 					| Remove all partition information and un-initialize a disk, erasing all data. |
|         Get-Disk                   		 | 		 					| Get one or more disks visible to the OS. |
|         Set-Disk                   		 | 		 					| Set attributes and update a physical disk. |
|  Initialize-Disk            		 		 | 		 					| Initialize a RAW disk for first use, this enables formatting. |
|       Mount-DiskImage         	 		 | 		 					| Mount a previously created disk image (virtual HD or ISO) |
|      Remove-Item 					 		 | Del/erase/rd/rm/rmdir    | Delete an item. |
|     Compare-Object 				 		 | diff/compare             | Compare the properties of objects. |
|         Get-DnsClientCache      	 		 | 		 					| Retrieve the content of the local DNS client cache. |
|       Clear-DnsClientCache      	 		 | 		 					| Clear the content of the DNS client cache. |
|         Get-DnsClientServerAddress 		 | 		 					| Get a DNS server IP address from the interface TCP/IP properties. |
|         Set-DnsClientServerAddress 		 | 		 					| Set a DNS server IP address on the interface TCP/IP properties.  |
|     Resolve-DnsName              	 		 | 		 					| Perform a DNS name query resolution for a specified name.   |
|       	  Do                     		 | 		 					| Loop while a condition is True. |
|         Get-DscConfiguration     	 		 | 		 					| Get the current config. of a node. |
|         Get-DscLocalConfigurationManager 	 |  						| Get Local Config Manager settings. |
|         Get-DscResource          	 		 | 		 					| Get Desired State Config. resources from a computer. |
|         New-DSCCheckSum          	 		 | 		 					| Create checksum files for DSC docs/resources. |
|       Start-DscConfiguration     	 		 | 		 					| Apply Desired State config to nodes. |
|<div style="background-color:green;">E</div>| 							| |
| 	    Write-Output          		 		 | echo						| Write an object to the pipeline. |
| 	          End                  	 		 | 		 					| Function END block. |
| 	      Get-Event                	 		 | 		 					| Get events in the PowerShell event queue. |
| 	      New-Event                	 		 | 		 					| Create a new event. |
| 	   Remove-Event                	 		 | 		 					| Delete events from the event queue. |
|  Unregister-Event                	 		 | 		 					| Cancel an event subscription. |
| 	     Wait-Event                	 		 | 		 					| Wait until a particular event is raised. |
| 	    Clear-EventLog             	 		 | 		 					| Delete all entries from an event log. |
| 	      Get-Eventlog             	 		 | 		 					| Get event log data (2003). |
| 	    Limit-EventLog             	 		 | 		 					| Limit the size of the event log. |
| 	      New-Eventlog             	 		 | 		 					| Create a new event log and a new event source. |
| 	   Remove-EventLog             	 		 | 		 					| Delete an event log. |
| 	     Show-EventLog             	 		 | 		 					| Display an event log. |
| 	    Write-EventLog             	 		 | 		 					| Write an event to an event log. |
| 	      Get-WinEvent             	 		 | 		 					| Get event log data (Vista+). |
|    	  Get-EventSubscriber     	 		 | 		 					| Get event subscribers. |
| 	 Register-EngineEvent          	 		 | 		 					| Subscribe to PowerShell events. |
| 	 Register-ObjectEvent          	 		 | 		 					| Subscribe to .NET events. |
|    Register-WmiEvent          	 		 | 		 					| Subscribe to a WMI event. |
|         Get-ExecutionPolicy        		 | 		 					| Get the execution policy for the shell. |
|         Set-ExecutionPolicy        		 | 		 					| Change the execution policy (user preference). |
|      Export-Alias        			 		 | epal   					| Export currently defined aliases to a file. |
|      Export-Clixml            	 		 | 		 					| Produce a clixml representation of PowerShell objects. |
|      Export-Console            	 		 | 		 					| Export console configuration to a file. |
|      Export-Csv         			 		 | epcsv	  				| Export to Comma Separated Values (spreadsheet). |
|        Exit-PSSession      		 		 | Exsn   					| Exit a PowerShell session. |
|    		  Exit        			 		 | Exit   					| Exit a script or exit PowerShell. |
|<div style="background-color:green;">F</div>| 							| |
|    		 -F (operator)           		 | 		 					| Format operator. |
|     Unblock-File               	 		 | 		 					| Unblock files downloaded from the Internet. |
|         Get-FileHash           	 		 | 		 					| Compute the hash value for a file. |
|     ForEach-Object  				 		 | foreach       			| Loop through each item in the pipeline ( % ). |
|             ForEach                		 |	    					| Loop through each item in a collection. |
|             ForEach (method)       		 |    		 				| Loop through each item in a collection. |
|             For                    		 |	    					| Loop through items that match a condition. |
|      Format-Custom        		 		 | fc 		  				| Format output using a customized view. |
|      Format-Hex           		 		 | fhx		  				| Display a file or other input as hexadecimal. |
|      Format-List          		 		 | fl 		  				| Format output as a list of properties, each on a new line. |
|      Format-Table         		 		 | ft 		  				| Format output as a table. |
|      Format-Wide          		 		 | fw 		  				| Format output as a table listing one property only. |
|      Export-FormatData           	 		 | 		 					| Save formatting data from the current session. |
|         Get-FormatData          	 		 | 		 					| Get the formatting data in the current session. |
|<div style="background-color:green;">G</div>| 							| |
|         Get-Item         			 		 | gi						| Get a file/registry object (or any other namespace object). |
|         Get-ChildItem   			 		 | dir/ls/gci				| Get child items (contents of a folder or registry key). |
|      Backup-GPO                	 		 | 		 					| Backup group policy objects (GPOs). |
|     Restore-GPO                	 		 | 		 					| Restore one or all GPOs from a GPO backup. |
|      Import-GPO                	 		 | 		 					| Import Group Policy settings into a specified GPO from a GPO backup. |
|       Group-Object       			 		 | group  					| Group objects that contain the same value. |
|         New-Guid                	 		 | 		 					| Create a GUID. |
|<div style="background-color:green;">H</div>| 							| |
|         Get-Help            		 		 | help						| Open the help file. |
|      Update-Help                   		 | 		 					| Download and install the newest help files on your computer. |
|         Add-History              	 		 | 		 					| Add entries to the session history. |
|       Clear-History       		 		 | clhy						| Delete entries from the session history. |
|         Get-History  				 		 | history/h/ghy 			| Get a listing of the session history. |
|      Invoke-History     		 	 		 | r/ihy					| Invoke a previously executed Cmdlet. |
|         Get-Host                 	 		 | 		 					| Get host information (PowerShell Version and Region). |
|       Clear-Host      			 		 | clear/cls				| Clear the screen. |
|         Out-Host            		 		 | oh						| Send output to the host. |
|        Read-Host                 	 		 | 		 					| Read a line of user input from the host console. |
|       Write-Host                	 		 | 		 					| Write customized output to the host/screen. |
|         Get-HotFix              	 		 | 		 					| Get Installed hotfixes. |
|<div style="background-color:green;">I</div>| 							| |
|             if                  	 		 | 		 					| Conditionally perform a command. |
|      Invoke-CimMethod    			 		 | icim						| Invoke a method of a CIM class or CIM instance. |
|      Import-Clixml              	 		 | 		 					| Import a clixml file and rebuild the PS object. |
|      Import-Csv         			 		 | ipcsv   					| Take values from a CSV list and send objects down the pipeline. |
|      Import-PfxCertificate      	 		 | 		 					| Import certificates and keys from a Personal Information Exchange(PFX) file. |
|       Write-Information         	 		 | 		 					| Specify how PowerShell should handle information stream data. |
|         Get-InitiatorPort       	 		 | 		 					| Get one or more host bus adapter (HBA) initiator ports. |
|     Install-Module              	 		 | 		 					| Download and install one or more modules from an online gallery. |
|     Install-Package             	 		 | 		 					| Install one or more software packages. |
|      Invoke-Command             	 		 | 		 					| Run commands on local and remote computers. |
|      Invoke-Expression    		 		 | iex   					| Run a PowerShell expression. |
|      Invoke-WebRequest          	 		 |							| Get content from a web page. |
|      Invoke-RestMethod          	 		 |							| Send an HTTP or HTTPS request to a RESTful web service. |
|         Get-NetIPAddress        	 		 |							| Get IPAddress configuration |
|         Get-Item           		 		 | gi   					| Get a file object or get a registry (or other namespace) object. |
|      Invoke-Item           		 		 | ii   					| Invoke an executable or open a file (START). |
|         New-Item  				 		 | md/mkdir/ni				| Create a new item in a namespace. |
|      Remove-Item  				 		 | rm/del/erase/rd/ri/rmdir	| Remove an item. |
|         Set-Item          		 		 | si    					| Change the value of an item. |
|       Clear-ItemProperty  		 		 | clp   					| Remove the property value from a property. |
|        Copy-ItemProperty  		 		 | cpp   					| Copy a property along with it's value. |
|         Get-ItemProperty  		 		 | gp    					| Retrieve the properties of an object. |
|        Move-ItemProperty  		 		 | mp    					| Move a property from one location to another. |
|         New-ItemProperty  		 		 |       					| Set a new property. |
|      Remove-ItemProperty  		 		 | rp    					| Remove a property and its value. |
|      Rename-ItemProperty  		 		 | rnp   					| Renames a property at its location. |
|         Set-ItemProperty  		 		 | sp    					| Set a property at the specified location to a specified value. |
|         Get-ItemPropertyValue 	 		 | gpv   					| Get the value for one or more properties of a specified item. |
|<div style="background-color:green;">J</div>| 							| |
|         Get-Job         			 		 | gjb    					| Get PowerShell background jobs that are running. |
|     Receive-Job         			 		 | rcjb   					| Get PowerShell background job results. |
|      Remove-Job         			 		 | rjb    					| Delete a PowerShell background job. |
|      Resume-Job         			 		 | rujb   					| Restart a suspended job. |
|       Start-Job         			 		 | sajb   					| Start a PowerShell background job. |
|        Stop-Job         			 		 | spjb   					| Stop a PowerShell background job. |
|        Wait-Job         			 		 | wjb    					| Wait for a background job. |
|    Job Trigger cmdlets        	 		 |							| Get/Set Scheduled job triggers. |
|<div style="background-color:green;">K</div>| 							| |
|        Stop-Process    			 		 | kill/spps  				| Stop a running process. |
|         Add-KdsRootKey             		 | 							| Generate a new root key for the MS.Group KdsSvc within AD. |
|<div style="background-color:green;">L</div>| 							| |
|      Update-List                   		 | 		 					| Add and remove items from a collection. |
|         New-LocalGroup             		 | 		 					| Add a new local security group. |
|         Get-LocalGroup             		 | 		 					| Get the local security groups. |
|      Remove-LocalGroup             		 | 		 					| Remove a local security group. |
|      Rename-LocalGroup             		 | 		 					| Rename a local security group. |
|         Set-LocalGroup             		 | 		 					| Change a local security group. |
|         Add-LocalGroupMember       		 | 		 					| Add members to a local group. |
|         Get-LocalGroupMember       		 | 		 					| Get members from a local group. |
|         New-LocalUser              		 | 		 					| Create a local user account. |
|         Set-LocalUser              		 | 		 					| Modify a local user account. |
|         Get-Location    			 		 | pwd / gl   				| Get and display the current location. |
|         Pop-Location  			 		 | popd        				| Set the current working location from the stack. |
|        Push-Location  			 		 | pushd       				| Push a location to the stack. |
|         Set-Location  			 		 | cd/chdir/sl 				| Set the current working location. |
|<div style="background-color:green;">M</div>| 							| |
|        Send-MailMessage            		 | 							| Send an email message. |
|     Measure-Object         	 	 		 | 							| Measure the properties of an object. |
|         Add-Member                 		 | 							| Add a member to an instance of a PowerShell object. |
|         Get-Member            	 		 | gm   					| Enumerate the properties of an object. |
|             MessageBox             		 | 		 					| Display a message box to the user |
|        Find-Module            	 		 | 		 					| Find modules from an online gallery. |
|         Get-Module          		 		 | gmo   					| Get the modules imported to the session. |
|      Import-Module         		 		 | ipmo   					| Add a module to the session. |
|     Install-Module               	 		 |							| Download and install modules from an online repository. |
|  	      New-Module          		 		 | nmo   					| Create a new dynamic module (only in memory). |
|  	   Remove-Module          		 		 | rmo   					| Remove a module from the current session. |
|        Save-Module                 		 | 							| Save a module locally without installing it. |
|  		  Get-InstalledModule        		 | 							| Get installed modules on a computer. |
|   Uninstall-Module             	 		 | 							| Uninstall a module. |
| 	   Update-Module                 		 | 							| Download/install a new module version. |
| 	   Export-ModuleMember           		 | 							| Export specific module members. |
| 	     Move-Item      			 		 | mv/move/mi  				| Move an item from one location to another. |
| 	      Set-MpPreference           		 |							| Configure preferences for Windows Defender. |
|<div style="background-color:green;">N</div>| 							| |
|         Get-NetAdapter             		 |							| Get the basic network adapter properties. |
|         Set-NetAdapter             		 |							| Set the basic network adapter properties. |
|     Disable-NetAdapterBinding   	 		 |							| Disable a binding to a network adapter. |
|         Get-NetAdapterVmq          		 |							| Get the VMQ properties of a network adapter. |
|         Set-NetAdapterVmq          		 |							| Set the VMQ properties of a network adapter. |
|        Test-NetConnection          		 |							| Display diagnostic information for a connection. |
|         Get-NetConnectionProfile   		 |							| Get a connection profile. |
|         Set-NetConnectionProfile   		 |							| Set a connection profile. |
|         Set-NetFirewallProfile     		 |							| Configure per-profile settings of Windows Firewall. |
|      Enable-NetFirewallRule        		 |							| Enable a previously disabled firewall rule. |
|         Set-NetFirewallRule        		 |							| Modify existing firewall rules. |
|         Get-NetFirewallRule        		 |							| Retrieve firewall rules from the target computer. |
|         New-NetFirewallRule        		 |							| Create a new firewall rule and add to a target computer. |
|         Get-NetIPAddress           		 |							| Get IP address configuration. |
|         New-NetIPAddress           		 |							| Create and configure an IP address. |
|      Remove-NetIPAddress           		 |							| Remove an IP address and its configuration. |
|         Set-NetIPAddress           		 |							| Modify the configuration of an IP address. |
|         Get-NetIPConfiguration     		 |							| Get IP network configuration. |
|         Get-NetIPInterface         		 |							| Get an IP interface. |
|         Set-NetIPInterface         		 |							| Modify an IP interface. |
|         New-NetLbfoTeam            		 |							| Create a new NIC team. |
|         New-NetNat                 		 |							| Create a NAT object. |
|         New-NetRoute               		 |							| Create a route in the IP routing table. |
|         Get-NetTCPConnection       		 |							| Get TCP connections. |
|         Set-NetTCPSetting          		 |							| Modify a TCP setting. |
|<div style="background-color:green;">O</div>| 							| |
|     Compare-Object 				 		 | diff/compare 			| Compare the properties of objects. |
|       Group-Object       			 		 | group  					| Group objects that contain the same value. |
|     Measure-Object              	 		 |							| Measure the properties of an object. |
|         New-Object              	 		 |							| Create a new .Net object. |
|      Select-Object      			 		 | select  					| Select properties of objects. |
|        Sort-Object        		 		 | sort  					| Sort objects by property value. |
|       Where-Object              	 		 |							| Filter the objects passed along the command pipeline. |
|    	  Add-OdbcDsn                		 |							| Add an ODBC DSN. |
|    	  Out-Default                		 |							| Set the destination of default output. |
|    	  Out-File                   		 |							| Send output to a file. |
|    	  Out-GridView         		 		 | ogv   					| Send output to an interactive table. |
|    	  Out-Host              	 		 | oh   					| Send output to the host. |
|    	  Out-Null                   		 |							| Send output to null. |
|    	  Out-Printer           	 		 | lp   					| Send the output to a printer. |
|    	  Out-String                 		 |							| Send objects to the host as strings. |
|<div style="background-color:green;">P</div>| 							| |
|         Get-Package            	 		 |							| Return a list of all software packages installed using Package Management. |
|        Find-Package            	 		 |							| Find software packages in available package sources. |
|     Install-Package            	 		 |							| Install one or more software packages. |
|   Uninstall-Package            	 		 |							| Uninstall one or more software packages. |
|     Install-PackageProvider    	 		 |							| Install one or more Package Management package providers. |
|             Param              	 		 |							| Script Parameters. |
|         Get-Partition          	 		 |							| Return a list of partition objects. |
|         New-Partition          	 		 |							| Create a new partition on an existing Disk object. |
|      Resize-Partition          	 		 |							| Resize a partition and the underlying file system. |
|         Set-Partition          	 		 |							| Set attributes of a partition: active, read-only, offline. |
|     Convert-Path        			 		 | cvpa   					| Convert a ps path to a provider path. |
|        Join-Path               	 		 |							| Combine a path and one or more child-paths. |
|     Resolve-Path        			 		 | rvpa   					| Resolves the wildcards in a path. |
|       Split-Path               	 		 |							| Return part of a path. |
|        Test-Path               	 		 |							| Return true if the path exists, otherwise return false. |
|             Pause              	 		 |							| Pause and display the message "Press Enter to continue..." |
|      Invoke-Pester             	 		 |							| Invoke Pester to recursively run all tests. |
|      Export-PfxCertificate       	 		 |							| Export a certificate or a PFXData object to a PFX file. |
|         Get-PfxCertificate       	 		 |							| Get pfx certificate information. |
|         Get-PhysicalDisk         	 		 |							| Retrieve a list of Physical Disk objects. |
|      Remove-PhysicalDisk         	 		 |							| Remove a physical disk from a specified storage pool. |
|         Set-PhysicalDisk         	 		 |							| Set attributes on a specific physical disk. |
|         Get-PnpDevice            	 		 |							| Return information about PnP devices. |
|         Pop-Location      		 		 | popd   					| Set the current working location from the stack. |
|        Push-Location     			 		 | pushd   					| Push a location to the stack. |
|             Powershell           	 		 |							| Launch a PowerShell session/run a script. |
|         Add-Printer              	 		 |							| Add a printer to the specified computer. |
|         Get-Printer              	 		 |							| Retrieve a list of printers installed on a computer. |
|      Remove-Printer              	 		 |							| Remove a printer from the specified computer. |
|         Set-Printer              	 		 |							| Update the configuration of an existing printer. |
|         Add-PrinterDriver        	 		 |							| Install a printer driver on the computer. |
|         Add-PrinterPort          	 		 |							| Install a printer port on the computer. |
|         Get-PrintJob             	 		 |							| Retrieve a list of print jobs from the specified printer. |
|             Process              	 		 |							| Function PROCESS block. |
|         Get-Process     			 		 | ps/gps   				| Get a list of processes on a machine. |
|       Debug-Process              	 		 |							| Attach a debugger to a running process. |
|       Start-Process  				 		 | start/saps  				| Start one or more processes. |
|        Stop-Process  				 		 | kill/spps  				| Stop a running process. |
|        Wait-Process              	 		 |							| Wait for a process to stop. |
|      Enable-PSBreakpoint  		 		 | ebp 						| Enable a breakpoint in the current console. |
|     Disable-PSBreakpoint  		 		 | dbp						| Disable a breakpoint in the current console. |
|         Get-PSBreakpoint  		 		 | gbp						| Get the currently set breakpoints. |
|         Set-PSBreakpoint  		 		 | sbp						| Set a breakpoint on a line, command, or variable. |
|      Remove-PSBreakpoint  		 		 | rbp						| Delete breakpoints from the current console. |
|         Get-PSCallStack   		 		 | gcs						| Display the current call stack. |
|         Get-PSDrive       		 		 | gdr						| Get drive information (DriveInfo). |
|         New-PSDrive   			 		 | mount/ndr 				| Create a mapped network drive. |
|      Remove-PSDrive       		 		 | rdr   					| Remove a provider/drive from its location. |
|         Get-PSProvider          	 		 |							| Get information for the specified provider. |
|         Set-PSdebug             	 		 |							| Turn script debugging on or off. |
|     Disable-PSRemoting          	 		 |							| Disable remote session configuration on the local computer. |
|      Enable-PSRemoting          	 		 |							| Configure the computer to receive remote commands. |
|         Get-PSRepository        	 		 |							| Get PowerShell repositories. |
|    Register-PSRepository        	 		 |							| Register a PowerShell repository. |
|         Set-PSRepository        	 		 |							| Set values for a registered repository. |
|     Connect-PSSession  			 		 | cnsn     				| Reconnect to a disconnected session. |
|  Disconnect-PSSession 			 		 | dnsn     				| Disconnect from a session. |
|       Enter-PSSession  			 		 | etsn     				| Start an interactive session with a remote computer. |
|        Exit-PSSession  			 		 | exsn     				| End an interactive session with a remote computer. |
|      Export-PSSession  			 		 | epsn     				| Import commands and save them in a PowerShell module. |
|         Get-PSSession   			 		 | gsn     					| Get the PSSessions in the current session. |
|      Import-PSSession  			 		 | ipsn    					| Import commands from another session. |
|         New-PSSession   			 		 | nsn     					| Create a persistent connection to a local or remote computer. |
|      Remove-PSSession   			 		 | rsn     					| Close PowerShell sessions. |
|     Disable-PSSessionConfiguration 		 | 		 					| Disable session configurations on the local computer. |
|      Enable-PSSessionConfiguration 		 | 		 					| Enable session configurations on the local computer. |
|         Get-PSSessionConfiguration 		 | 		 					| Get the registered PS session configuration. |
|    Register-PSSessionConfiguration 		 | 		 					| Create and register a new PS session configuration. |
|         Set-PSSessionConfiguration 		 | 		 					| Change properties of a registered session configuration. |
|  Unregister-PSSessionConfiguration 		 | 		 					| Delete registered PS session configuration. |
|         New-PSSessionConfigurationFile 	 | 		 					| Create a file that defines a session configuration. |
|         New-PSSessionOption        		 | 		 					| Advanced options for a PSSession. |
|         Add-PsSnapIn        		 		 | asnp   					| Add snap-ins to the console. |
|         Get-PsSnapin        		 		 | gsnp   					| List PowerShell snap-ins on this computer. |
|      Remove-PSSnapin     			 		 | rsnp   					| Remove PowerShell snap-ins from the console. |
|<div style="background-color:green;">R</div>| 							| |
|         Get-Random                 		 |							| Get a random number. |
|        Read-Host                   		 |							| Read a line of input from the host console. |
|       Clear-RecycleBin           	 		 |							| Clear the RecycleBin. |
|      Remove-Item  				 		 | rm/del/erase/rd/ri/rmdir | Remove an item. |
|      Rename-Item      			 		 | ren/rni   				| Change the name of an existing item. |
|      Rename-ItemProperty        	 		 | 							| Rename a property of an item. |
|     Restart-Computer           	 		 | 							| Restart the operating system on a computer. |
|             Return                 		 | 							| Exit the current scope, (function, script, or script block). |
|             Run/Call            	 		 |  & 						| Run a command (call operator). |
|<div style="background-color:green;">S</div>| 							| |
|    Scheduler cmdlets          	 		 | 							| Get/Set scheduled jobs. |
|     Confirm-SecureBootUEFI      	 		 | 							| Confirm that Secure Boot is enabled on the local computer. |
|      Select-Object     				 	 | select   				| Select properties of objects. |
|      Select-XML                 	 		 | 							| Find text in an XML string or document. |
|         New-SelfSignedCertificate   	 	 | 							| Create a new self-signed certificate for testing purposes. |
|        Send-MailMessage           	 	 | 							| Send an email message. |
|         Get-Service      			 		 | gsv 						| Get a list of services. |
|         New-Service            	 		 |							| Create a new service. |
|     Restart-Service            	 		 |							| Stop and then restart a service. |
|      Resume-Service            	 		 |							| Resume a suspended service. |
|         Set-Service            	 		 |							| Change the start mode/properties of a service. |
|       Start-Service     			 		 | sasv 					| Start a stopped service. |
|        Stop-Service     			 		 | spsv   					| Stop a running service. |
|     Suspend-Service            	 		 |							| Suspend a running service. |
|        Sort-Object         			 	 | sort 					| Sort objects by property value. |
|         Get-SmbConnection         	 	 |							| Retrieve the connections established from the SMB client to the SMB servers. |
|         Get-SmbOpenFile           	 	 |							| Information about files that are open on behalf of SMB server clients. |
|         Get-SMBMapping            	 	 |							| Get an SMB mapping. |
|         New-SmbMapping            	 	 |							| Create an SMB mapping. |
|      Remove-SmbMapping            	 	 |							| Remove an SMB mapping. |
|         Get-SmbSession            	 	 |							| Retrieve information about current SMB sessions. |
|         Set-SmbClientConfiguration   	 	 |							| Set the SMB client configuration. |
|         Get-SmbServerConfiguration   	 	 |							| Get the SMB Server configuration. |
|         Set-SmbServerConfiguration   	 	 |							| Set the SMB Server configuration. |
|         Get-SmbShare              	 	 |							| Retrieve the SMB shares on the computer. |
|         Set-SmbShare              	 	 |							| Modify the properties of an SMB share. |
|         New-SmbShare              	 	 |							| Create an SMB share. |
|         Get-SmbShareAccess        	 	 |							| Retrieve the ACL of an SMB share. |
|       Grant-SmbShareAccess        	 	 |							| Add an allow ACE for a trustee to the security descriptor of the SMB share. |
|         Set-StrictMode             	 	 |							| Enforce coding rules in expressions & scripts. |
|         Get-StartApps           	 		 |							| Get the names and IDs of apps installed on the Start Menu. |
|      Export-StartLayout         	 		 |							| Export layout of the Start screen as an .xml file. |
|      Import-StartLayout         	 		 |							| Import the layout of the Start into a mounted Windows image. |
|       Start-Sleep        			 		 | sleep   					| Suspend shell, script, or runspace activity. |
|         Get-StorageJob             	 	 |							| Information about long-running Storage module jobs, such as a repair task. |
|         New-StoragePool            	 	 |							| Create a new storage pool using a group of physical disks. |
|             Switch                     	 |							| Check multiple conditions. |
| ConvertFrom-StringData     	 			 |							| Convert a here-string into a hash table. |
|      Select-String              	 		 |							| Search through strings or files for patterns. |
|<div style="background-color:green;">T</div>| 							| |
|         Tee-Object           			 	 | tee   					| Send input objects to two places. |
|         New-Timespan               	 	 | 							| Create a timespan object. |
|         Get-TimeZone         			 	 | gtz						| Get the current time zone or a list of available time zones. |
|         Set-TimeZone         			 	 | stz  					| Set the system time zone to a specified time zone. |
|         Get-TlsCipherSuite         	 	 | 							| Get the list of cipher suites for TLS for a computer. |
|         Get-Tpm                    	 	 |							| Trusted Platform Module (TPM) |
|       Trace-Command              	 		 |							| Trace an expression or command. |
|         Get-Tracesource            	 	 |							| Get components that are instrumented for tracing. |
|         Set-Tracesource            	 	 |							| Trace a PowerShell component. |
|       Start-Transaction        	 		 |							| Start a new transaction. |
|    Complete-Transaction        	 		 |							| Commit the transaction. |
|         Get-Transaction        	 		 |							| Get information about the active transaction. |
|         Use-Transaction        	 		 |							| Add a command or expression to the transaction. |
|        Undo-Transaction        	 		 |							| Roll back a transaction. |
|       Start-Transcript           	 		 |							| Start a transcript of a command shell session. |
|        Stop-Transcript           	 		 |							| Stop the transcription process. |
|             Trap                 	 		 |							| Handle a terminating error. |
|             Try ... Catch        	 		 |							| Handle a terminating error within a scriptblock. |
|         Add-Type                 	 		 |							| Add a .NET Framework type to a PowerShell session. |
|      Update-TypeData            	 		 |							| Update extended type configuration. |
|<div style="background-color:green;">U</div>| 							| |
|         Get-Uiculture              	 	 |							| Get the ui culture information. |
|     Unblock-File           	 			 | 							| Unblock files downloaded from the Internet. |
|         Get-Unique            			 | gu   					| Get the unique items in a collection. |
|      Update-Formatdata         	 		 |							| Update and append format data files. |
|      Update-Help               	 		 |							| Download and install help files. |
|      Update-Typedata          		 	 |							| Update the current extended type configuration. |
|<div style="background-color:green;">V</div>| 							| |
|       Clear-Variable       				 | clv   					| Remove the value from a variable. |
|         Get-Variable        				 | gv   					| Get a PowerShell variable. |
|         New-Variable        				 | nv   					| Create a new variable. |
|      Remove-Variable        				 | rv   					| Remove a variable and its value. |
|         Set-Variable    					 | set/sv   				| Set a variable and a value. |
|         Get-VirtualDisk          	 		 |							| Return a list of VirtualDisks across storage pools/providers. |
|         New-VirtualDisk          	 		 |							| Create a new virtual disk in the specified storage pool. |
|         Get-Volume              	 		 |							| Get the specified Volume object, or all Volume objects. |
|      Format-Volume              	 		 |							| Format one or more volumes. |
|         New-Volume              	 		 |							| Create a volume with the specified file system. |
|    Optimize-Volume              	 		 |							| Optimize a volume. |
|      Repair-Volume              	 		 |							| Perform repairs on a volume. |
|         Add-VpnConnection       	 		 |							| Add a VPN connection to the Connection Manager phone book. |
|         Get-VpnConnection       	 		 |							| Retrieve the specified VPN connection profile information. |
|         Set-VpnConnection       	 		 |							| Change the config. of a VPN connection profile. |
|         Add-VpnConnectionRoute  	 		 |							| Add a route to a VPN connection. |
|<div style="background-color:green;">W</div>| 							| |
|  Checkpoint-WebApplicationMonitoring 		 | 							| Create a checkpoint for an IIS web app. |
|         Get-WebApplicationMonitoringStatus | 							| Get the monitoring status of web apps. |
|         New-WebServiceProxy          		 |							| Create a Web service proxy object. |
|      Invoke-WebRequest             		 |							| Get content from a web page. |
|       Where-Object               			 |							| where/? |   Filter input from the pipeline. |
|             Where method               	 |							| Filter objects from a collection. |
|             While                      	 |							| Loop while a condition is True. |
|         Add-WindowsCapability    			 |							| Install a Windows capability package on the specified OS image. |
|         Get-WindowsCapability    			 |							| Get capabilities for an image or a running OS. |
|      Remove-WindowsCapability    			 |							| Uninstall a Windows capability package from an image. |
|      Export-WindowsDriver 				 | 							| |
|         Add-WindowsFeature       			 |							| Install roles, role services, and features. (Server 2008 R2). |
|         Get-WindowsFeature      			 |							| Retrieve roles, role services, and features. |
|     Install-WindowsFeature       			 |							| Install roles, role services, or features (Server 2012 R2). |
|   Uninstall-WindowsFeature      			 |							| Uninstall/remove roles, role services, and features (2012 R2) |
|       Mount-WindowsImage         			 |							| Mount a Windows image (WIM or VHD file) to a directory on the local computer. |
|      Repair-WindowsImage         			 |							| Repair a Windows image in a WIM or VHD file. |
|     Disable-WindowsOptionalFeature		 |							| Disable a feature in a Windows image. |
|      Enable-WindowsOptionalFeature 		 |							| Enable a feature in a Windows image. |
|         Get-WindowsOptionalFeature 		 |							| Get information about optional features in a Windows image. |
|         Add-WindowsPackage         		 |							| Add a single .cab or .msu file to a Windows image. |
|         Get-WindowsPackage         		 |							| Get information about packages in a Windows image. |
|      Remove-WindowsPackage         		 |							| Remove a package from a Windows image. |
|         Get-WindowsUpdateLog       		 | 							| Merge Windows Update .etl files into a single log file. |
|         Set-WinSystemLocale        		 | 							| Set the system locale for the current computer. |
|         Set-WinUserLanguageList    		 | 							| Set the language list/properties for the current user. |
|       Write-Debug                			 | 							| Write a debug message to the console (5). |
|       Write-Error                			 | 							| Write an object to the error pipeline (2). |
|       Write-Host                 			 | 							| Display text on screen. |
|       Write-Information          			 | 							| Write to the information data stream (6). |
|       Write-Output   						 | write/echo 				| Write an object to the pipeline (1). |
|       Write-Progress             			 | 							| Display a progress bar. |
|       Write-Verbose              			 | 							| Write a string to the host's verbose display (4). |
|       Write-Warning              			 | 							| Write a warning string (3) in reverse video to the display. |
|         Set-WmiInstance           		 | 							| Create or update an instance of an existing WMI class. |
|      Invoke-WmiMethod      				 | iwmi 					| Call WMI methods. |
|         Get-WmiObject      				 | gwmi 					| Get WMI class information. |
|      Remove-WmiObject      				 | rwmi 					| Delete an instance of a WMI class. |
|     Connect-WSMan             			 | 							| Connect to the WinRM service on a remote computer. |
|  Disconnect-WSMan             			 | 							| Disconnect from the WinRM service on a remote computer. |
|        Test-WSMan             			 | 							| Test if a computer is setup to receive remote commands. |
|      Invoke-WSManAction          			 | 							| Invoke an action on a specified object. |
|     Disable-WSManCredSSP         			 | 							| Disable Credential Security Service Provider (SSP) authentication. |
|      Enable-WSManCredSSP         			 | 							| Enable Credential SSP authentication. |
|         Get-WSManCredSSP         			 | 							| Get the Credential SSP configuration. |
|         New-WSManInstance          		 | 							| Create a new instance of a management resource. |
|         Get-WSManInstance          		 | 							| Display management information (XML or value). |
|         Set-WSManInstance          		 | 							| Modify the management information related to a resource. |
|      Remove-WSManInstance          		 | 							| Delete a management resource instance. |
|         Set-WSManQuickConfig       		 | 							| Configure the local computer for remote management. |
|         New-WSManSessionOption     		 | 							| Options for WSMan commands. |
|<div style="background-color:green;">Z</div>| 							| |
|             Zipfile                    	 | 							| Compress or Extract zip files. |
|        #                      			 | 							| Comment / Remark. |
|        . (source)             			 | 							| Run a command script in the current shell. |
|        & (call)               			 | 							| Run a command, script or function. |
|        %                      			 | 							| Alias for ForEach-Object. |
|        --%                    			 | 							| Stop parsing input. |
|        ?                      			 | 							| Alias for Where-Object. |
|        $variable = "value"    			 | 							| Define a variable  also: ${n!a#me} = "value". |
|        $_                     			 | 							| The current pipeline object. |
|        @(...)                 			 | 							| Force an expression to be evaluated as an array. |
|        \`                     			 | 							| Escape or Continue on the next line. |
