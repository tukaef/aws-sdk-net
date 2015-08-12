using System;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Runtime.CompilerServices;

// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
[assembly: AssemblyTitle("AWSSDK.Core")]
#if BCL35
[assembly: AssemblyDescription("The Amazon Web Services SDK for .NET (3.5) - Core Runtime")]
#elif BCL45
[assembly: AssemblyDescription("The Amazon Web Services SDK for .NET (4.5) - Core Runtime")]
#elif PCL
[assembly: AssemblyDescription("The Amazon Web Services SDK for .NET (PCL)- Core Runtime")]
#else
#error Unknown platform constant - unable to set correct AssemblyDescription
#endif

[assembly: AssemblyConfiguration("")]
[assembly: AssemblyProduct("Amazon Web Services SDK for .NET")]
[assembly: AssemblyCompany("Amazon.com, Inc")]
[assembly: AssemblyCopyright("Copyright 2009-2015 Amazon.com, Inc. or its affiliates. All Rights Reserved.")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]

// Setting ComVisible to false makes the types in this assembly not visible 
// to COM components.  If you need to access a type in this assembly from 
// COM, set the ComVisible attribute to true on that type.
[assembly: ComVisible(false)]

// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Build and Revision Numbers 
// by using the '*' as shown below:
// [assembly: AssemblyVersion("1.0.*")]
[assembly: AssemblyVersion("3.1")]
[assembly: AssemblyFileVersion("3.1.0.1")]

#if WINDOWS_PHONE
[assembly: System.CLSCompliant(false)]
# else
[assembly: System.CLSCompliant(true)]
#endif

#if BCL
[assembly: System.Security.AllowPartiallyTrustedCallers]
#endif

#if BCL45
// Setting SecurityRules to level 1 to match .NET 2.0 rules and allow the
// Amazon.Util.Settings.UserCrypto methods to work in .NET 4.5
[assembly: System.Security.SecurityRules(System.Security.SecurityRuleSet.Level1)]
#endif


//declare the permission we use in the manifest
#if __ANDROID__
//network permission
[assembly: Android.App.UsesPermission(Name="android.permission.INTERNET")]

//for network reachability
[assembly: Android.App.UsesPermission(Name="android.permission.ACCESS_NETWORK_STATE")]
[assembly: Android.App.UsesPermission(Name="android.permission.ACCESS_WIFI_STATE")]

//for storage
[assembly: Android.App.UsesPermission(Name="android.permission.READ_EXTERNAL_STORAGE")]
[assembly: Android.App.UsesPermission(Name="android.permission.WRITE_EXTERNAL_STORAGE")]

#endif