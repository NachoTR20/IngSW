#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"DNF")]
[assembly: AssemblyProduct(@"DCJITRFPFProyectoIPS")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"DNF.DCJITRFPFProyectoIPS.DslPackage, PublicKey=0024000004800000940000000602000000240000525341310004000001000100BDF600DBBB3C2B0E30F53B5EDA0BAED8C2E9474786B9D211AF3888C9FB04E38749CA7E0DFE7F5535B495397054A717E8AE9E42AD720BE4C5DDF15E84DB0F60910CC8D0B11C0D92061DCC2D1827B6C3972888F9480B4E5C23F6490350A9D59EFB8D894D07666C05A9E28554CDE1EE9DB86F8629A90422B9FAABC65ECA9F9D69AB")]