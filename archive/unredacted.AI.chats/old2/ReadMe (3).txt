3C015, 3Com(R) Corporation 
June 2,1998

Optional Upgrade for DynamicAccess(R) Software
==========================================================           

  This disk contains the 3Com DynamicAccess software release 1.5, which is an 
  optional upgrade from the DynamicAccess software that is installed when you 
  set up your NIC driver.  DynamicAccess software is for PCs running 
  Windows 95 or Windows NT.
 
	NOTE: This disk does not contain NIC drivers. 

  Please contact your network administrator about using DynamicAccess 
  software at your site.

For Network Administrators
---------------------------------
  To extract the DynamicAccess software and instruction files: 

  Double-click the DA15SW2.EXE file.  The unzipped files expand by 
  default into the directory: 

    3COMDA15, with the following subdirectories:

    --> DA15SW which contains all the software files you need
    --> INSTALLATION which contains the installation instructions, 
          starting with Instructions.html  

  Be sure to review the License agreement before you start using DynamicAccess 
  software and register your software with 3Com.  You can register via the web 
  at http://www.3Com.com/dareg1 .  For any additional information 
  about DynamicAccess software, check the 3Com web site at:
	http://www.3Com.com/dynamicaccess 

  For non-technical questions or comments about the DynamicAccess software 
  version 1.5 product, please send e-mail to:  
	DA_Feedback@3com.com.  

 
	NOTE: DynamicAccess software instructions are intended 
      for network administrators who have experience installing 
	software and using management tools for an Ethernet network.  
	To read the installation and configuration details, you need 
	a web browser.

System Requirements for DynamicAccess Software 
----------------------------------------------------

These client requirements are the minimum suggested for running DynamicAccess 
software version 1.5.  

-- PC running Windows 95, 486/75 MHz CPU, 16 MB of RAM (32 MB recommended), 
   5 MB of available hard disk space 

-- PC running Windows NT 3.51 or Windows NT 4.0, Pentium/100 MHz CPU, 
   32 MB of RAM, 5 MB of available hard disk space 

-- Any NDIS 3-compliant network interface card (NIC) for Fast IP and 
   GMRP or 3Com Ethernet/Fast Ethernet NIC for other DynamicAccess 
   software features 

Additional requirements for your network or end nodes according to 
the DynamicAccess software features you want to implement are 
outlined in this table.

DynamicAccess

Feature	Standards	Network 			NIC 			Protocol
				Requirements		Requirements	Requirements
==============================================================================
dRMON		RMON		For the Edge Monitor: 	3Com 			None
				Windows NT 			Ethernet/Fast 
				Workstation or Server, 	Ethernet NICs
				version 3.51 or 4.0 with 
				proper Service Packs

Fast IP	NHRP, 	Layer 2 switched path 	At least NDIS 3-	TCP/IP
		802.1p/Q	between end nodes on 	compliant
				separate subnets, with 	Ethernet/Fast 
				central router between 	Ethernet NICs
				IP subnets

Traffic 	802.1p,PACE	IEEE 802.1p or		3Com			IP or IPX	
Prioriti-	RFC,IP ToS	switches enabled with	Ethernet/Fast 
zation			PACE(TM) technology	Ethernet NICs

Efficient 	802.1p,	IEEE 802.1p GMRP 		At least NDIS 3-	None
Multicast 	GMRP		switches			compliant
Control							Ethernet/Fast 
								Ethernet NICs	
-------------------------------------------------------------------------------

For maximum performance and reliability when you run DynamicAccess 
software, 3Com strongly recommends that the latest Microsoft Service 
Pack for that operating system be installed on any computer on which 
you plan to install DynamicAccess software.  The Service Pack levels 
that were current at the time of product release are as follows: 

--> For Windows 95: either the Windows 95 OSR2 release or Windows 95 with Service Pack 1 
--> For Windows NT 3.51:  Service Pack 5  
--> For Windows NT 4.0:  Service Pack 3 

To determine whether you have Windows 95 OSR2 or Windows 95 with 
Service Pack 1, right-click the My Computer icon and select Properties.  
In the General tab, the notation 4.00.950 B indicates that the OSR2 
release of Windows 95 is installed.  The notation 4.00.950a indicates 
that Service Pack 1 for Windows 95 is installed. 

To determine the Service Pack level for Windows NT, check the displayed 
Service Pack level on the boot screen. Or, open the Control Panel 
and select About Windows NT from the Help menu.  Check Microsoft's 
World Wide Web page for the most current Service Pack at 
http://www.microsoft.com.
 
 
