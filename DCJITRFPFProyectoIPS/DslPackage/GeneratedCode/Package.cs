﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Drawing.Design;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using VSShellInterop = global::Microsoft.VisualStudio.Shell.Interop;
using VSShell = global::Microsoft.VisualStudio.Shell;
using DslShell = global::Microsoft.VisualStudio.Modeling.Shell;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslModeling = global::Microsoft.VisualStudio.Modeling;

namespace DNF.DCJITRFPFProyectoIPS
{
	/// <summary>
	/// This class implements the VS package that integrates this DSL into Visual Studio.
	/// </summary>
	[VSShell::PackageRegistration(RegisterUsing = VSShell::RegistrationMethod.Assembly, UseManagedResourcesOnly = true, AllowsBackgroundLoading = true)]
	[VSShell::ProvideToolWindow(typeof(DCJITRFPFProyectoIPSExplorerToolWindow), MultiInstances = false, Style = VSShell::VsDockStyle.Tabbed, Orientation = VSShell::ToolWindowOrientation.Right, Window = "{3AE79031-E1BC-11D0-8F78-00A0C9110057}")]
	[VSShell::ProvideToolWindowVisibility(typeof(DCJITRFPFProyectoIPSExplorerToolWindow), Constants.DCJITRFPFProyectoIPSEditorFactoryId)]
	[VSShell::ProvideStaticToolboxGroup("@DCJITRFPFProyectoIPS1ToolboxTab;DNF.DCJITRFPFProyectoIPS.Dsl.dll", "DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab")]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@EntidadToolToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.EntidadToolToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"EntidadTool", 
					"@EntidadToolToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 0)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@AtributoNMToolToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.AtributoNMToolToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"AtributoNMTool", 
					"@AtributoNMToolToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 1)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@EntidadAtributoConexToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.EntidadAtributoConexToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"EntidadAtributoConex", 
					"@EntidadAtributoConexToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 2)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@ClavePrimariaToolToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.ClavePrimariaToolToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"ClavePrimariaTool", 
					"@ClavePrimariaToolToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 3)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@RelacionToolToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.RelacionToolToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"RelacionTool", 
					"@RelacionToolToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 4)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@PrimeraRelacionToolToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.PrimeraRelacionToolToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"PrimeraRelacionTool", 
					"@PrimeraRelacionToolToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 5)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@SegundaRelacionToolToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.SegundaRelacionToolToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"SegundaRelacionTool", 
					"@SegundaRelacionToolToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 6)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@PortalWebToolToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.PortalWebToolToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"PortalWebTool", 
					"@PortalWebToolToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 7)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@PaginaWebToolToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.PaginaWebToolToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"PaginaWebTool", 
					"@PaginaWebToolToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 8)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@FormularioToolToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.FormularioToolToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"FormularioTool", 
					"@FormularioToolToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 9)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@RelacionAtributoConexToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.RelacionAtributoConexToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"RelacionAtributoConex", 
					"@RelacionAtributoConexToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 10)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@AtributoRelacionToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.AtributoRelacionToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"AtributoRelacion", 
					"@AtributoRelacionToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 11)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@PagWebRefEntidadToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.PagWebRefEntidadToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"PagWebRefEntidad", 
					"@PagWebRefEntidadToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 12)]
	[VSShell::ProvideStaticToolboxItem("DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS1ToolboxTab",
					"@AtributoRefFormularioToolboxItem;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					"DNF.DCJITRFPFProyectoIPS.AtributoRefFormularioToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"AtributoRefFormulario", 
					"@AtributoRefFormularioToolboxBitmap;DNF.DCJITRFPFProyectoIPS.Dsl.dll", 
					0xff00ff,
					Index = 13)]
	[VSShell::ProvideEditorFactory(typeof(DCJITRFPFProyectoIPSEditorFactory), 103, TrustLevel = VSShellInterop::__VSEDITORTRUSTLEVEL.ETL_AlwaysTrusted)]
	[VSShell::ProvideEditorExtension(typeof(DCJITRFPFProyectoIPSEditorFactory), "." + Constants.DesignerFileExtension, 50)]
	[VSShell::ProvideEditorLogicalView(typeof(DCJITRFPFProyectoIPSEditorFactory), "{7651A702-06E5-11D1-8EBD-00A0C90F26EA}")] // Designer logical view GUID i.e. VSConstants.LOGVIEWID_Designer
	[DslShell::ProvideRelatedFile("." + Constants.DesignerFileExtension, Constants.DefaultDiagramExtension,
		ProjectSystem = DslShell::ProvideRelatedFileAttribute.CSharpProjectGuid,
		FileOptions = DslShell::RelatedFileType.FileName)]
	[DslShell::ProvideRelatedFile("." + Constants.DesignerFileExtension, Constants.DefaultDiagramExtension,
		ProjectSystem = DslShell::ProvideRelatedFileAttribute.VisualBasicProjectGuid,
		FileOptions = DslShell::RelatedFileType.FileName)]
	[DslShell::RegisterAsDslToolsEditor]
	[global::System.Runtime.InteropServices.ComVisible(true)]
	[DslShell::ProvideBindingPath]
	[DslShell::ProvideXmlEditorChooserBlockSxSWithXmlEditor(@"DCJITRFPFProyectoIPS", typeof(DCJITRFPFProyectoIPSEditorFactory))]

	internal abstract partial class DCJITRFPFProyectoIPSPackageBase : DslShell::AsyncModelingPackage
	{
		protected global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSToolboxHelper toolboxHelper;	
		
		/// <summary>
		/// Initialization method called by the package base class when this package is loaded.
		/// </summary>
		protected async override Task InitializeAsync(CancellationToken cancellationToken, IProgress<VSShell.ServiceProgressData> progress)
		{
			await base.InitializeAsync(cancellationToken, progress);

			// Register the editor factory used to create the DSL editor.
			this.RegisterEditorFactory(new DCJITRFPFProyectoIPSEditorFactory(this));
			
			// Initialize the toolbox helper
			toolboxHelper = new global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSToolboxHelper(this);

			// Create the command set that handles menu commands provided by this package.
			DCJITRFPFProyectoIPSCommandSet commandSet = new DCJITRFPFProyectoIPSCommandSet(this);
			await commandSet.InitializeAsync(cancellationToken);
			
			// Create the command set that handles cut/copy/paste commands provided by this package.
			DCJITRFPFProyectoIPSClipboardCommandSet clipboardCommandSet = new DCJITRFPFProyectoIPSClipboardCommandSet(this);
			await clipboardCommandSet.InitializeAsync(cancellationToken);
			
			// Register the model explorer tool window for this DSL.
			this.AddToolWindow(typeof(DCJITRFPFProyectoIPSExplorerToolWindow));

			if (cancellationToken.IsCancellationRequested)
			{
				return;
			}

			await JoinableTaskFactory.SwitchToMainThreadAsync();

			// Initialize Extension Registars
			// this is a partial method call
			this.InitializeExtensions();

			// Add dynamic toolbox items
			await this.SetupDynamicToolboxAsync(cancellationToken);
		}

		/// <summary>
		/// Partial method to initialize ExtensionRegistrars (if any) in the DslPackage
		/// </summary>
		partial void InitializeExtensions();
		
		/// <summary>
		/// Returns any dynamic tool items for the designer
		/// </summary>
		/// <remarks>The default implementation is to return the list of items from the generated toolbox helper.</remarks>
		protected override global::System.Collections.Generic.IList<DslDesign::ModelingToolboxItem> CreateToolboxItems()
		{
			try
			{
				Debug.Assert(toolboxHelper != null, "Toolbox helper is not initialized");
				return toolboxHelper.CreateToolboxItems();
			}
			catch (global::System.Exception e)
			{
				global::System.Diagnostics.Debug.Fail("Exception thrown during toolbox item creation.  This may result in Package Load Failure:\r\n\r\n" + e);
				throw;
			}
		}
		
		
		/// <summary>
		/// Given a toolbox item "unique ID" and a data format identifier, returns the content of
		/// the data format. 
		/// </summary>
		/// <param name="itemId">The unique ToolboxItem to retrieve data for</param>
		/// <param name="format">The desired format of the resulting data</param>
		protected override object GetToolboxItemData(string itemId, DataFormats.Format format)
		{
			Debug.Assert(toolboxHelper != null, "Toolbox helper is not initialized");
		
			// Retrieve the specified ToolboxItem from the DSL
			return toolboxHelper.GetToolboxItemData(itemId, format);
		}

		public override VSShellInterop::IVsAsyncToolWindowFactory GetAsyncToolWindowFactory(Guid toolWindowType)
		{
			if (toolWindowType == typeof(DCJITRFPFProyectoIPSExplorerToolWindow).GUID)
			{
				return this;
			}

			return base.GetAsyncToolWindowFactory(toolWindowType);
		}
	}
}

//
// Package attributes which may need to change are placed on the partial class below, rather than in the main include file.
//
namespace DNF.DCJITRFPFProyectoIPS
{
	/// <summary>
	/// Double-derived class to allow easier code customization.
	/// </summary>
	[VSShell::ProvideMenuResource("1000.ctmenu", 1)]
	[VSShell::ProvideToolboxItems(1)]
	[global::Microsoft.VisualStudio.TextTemplating.VSHost.ProvideDirectiveProcessor(typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDirectiveProcessor), global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDirectiveProcessor.DCJITRFPFProyectoIPSDirectiveProcessorName, "A directive processor that provides access to DCJITRFPFProyectoIPS files")]
	[global::System.Runtime.InteropServices.Guid(Constants.DCJITRFPFProyectoIPSPackageId)]
	internal sealed partial class DCJITRFPFProyectoIPSPackage : DCJITRFPFProyectoIPSPackageBase
	{
	}
}