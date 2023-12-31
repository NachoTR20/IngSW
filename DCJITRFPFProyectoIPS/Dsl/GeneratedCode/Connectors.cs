﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace DNF.DCJITRFPFProyectoIPS
{
	/// <summary>
	/// DomainClass MetaforaEntidadRefAtributo
	/// Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaEntidadRefAtributo
	/// </summary>
	[DslDesign::DisplayNameResource("DNF.DCJITRFPFProyectoIPS.MetaforaEntidadRefAtributo.DisplayName", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("DNF.DCJITRFPFProyectoIPS.MetaforaEntidadRefAtributo.Description", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("7352e729-2ffa-42f2-b05a-3554bb39a209")]
	public partial class MetaforaEntidadRefAtributo : DslDiagrams::BinaryLinkShape
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with MetaforaEntidadRefAtributo.
		/// </summary>
		public static DslDiagrams::Decorator FindMetaforaEntidadRefAtributoDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		#endregion
		
		#region Connector styles
		#endregion
		
		#region Constructors, domain class Id
	
		/// <summary>
		/// MetaforaEntidadRefAtributo domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x7352e729, 0x2ffa, 0x42f2, 0xb0, 0x5a, 0x35, 0x54, 0xbb, 0x39, 0xa2, 0x09);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaEntidadRefAtributo(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaEntidadRefAtributo(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace DNF.DCJITRFPFProyectoIPS
{
	/// <summary>
	/// DomainClass MetaforaPrimeraRelacionEntidad
	/// Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaPrimeraRelacionEntidad
	/// </summary>
	[DslDesign::DisplayNameResource("DNF.DCJITRFPFProyectoIPS.MetaforaPrimeraRelacionEntidad.DisplayName", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("DNF.DCJITRFPFProyectoIPS.MetaforaPrimeraRelacionEntidad.Description", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("df4c3a24-6b07-4245-92a9-8b25adb18388")]
	public partial class MetaforaPrimeraRelacionEntidad : DslDiagrams::BinaryLinkShape
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with MetaforaPrimeraRelacionEntidad.
		/// </summary>
		public static DslDiagrams::Decorator FindMetaforaPrimeraRelacionEntidadDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		
		/// <summary>
		/// Shape instance initialization.
		/// </summary>
		public override void OnInitialize()
		{
			base.OnInitialize();
			
			// Create host shapes for outer decorators.
			foreach(DslDiagrams::Decorator decorator in this.Decorators)
			{
				if(decorator.RequiresHost)
				{
					decorator.ConfigureHostShape(this);
				}
			}
			
		}
		#endregion
		
		#region Connector styles
		#endregion
		
		#region Decorators
		/// <summary>
		/// Initialize the collection of shape fields associated with this shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
		}
		
		/// <summary>
		/// Initialize the collection of decorators associated with this shape type.  This method also
		/// creates shape fields for outer decorators, because these are not part of the shape fields collection
		/// associated with the shape, so they must be created here rather than in InitializeShapeFields.
		/// </summary>
		protected override void InitializeDecorators(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields, global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators)
		{
			base.InitializeDecorators(shapeFields, decorators);
			
			DslDiagrams::TextField field1 = new DslDiagrams::TextField("Card1");
			field1.DefaultText = global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel.SingletonResourceManager.GetString("MetaforaPrimeraRelacionEntidadCard1DefaultText");
			field1.DefaultFocusable = true;
			field1.DefaultAutoSize = true;
			field1.AnchoringBehavior.MinimumHeightInLines = 1;
			field1.AnchoringBehavior.MinimumWidthInCharacters = 1;
			field1.DefaultAccessibleState = global::System.Windows.Forms.AccessibleStates.Invisible;
			DslDiagrams::Decorator decorator1 = new DslDiagrams::ConnectorDecorator(field1, DslDiagrams::ConnectorDecoratorPosition.TargetTop, DslDiagrams::PointD.Empty);
			decorators.Add(decorator1);
				
		}
		
		#endregion
		
		#region Constructors, domain class Id
	
		/// <summary>
		/// MetaforaPrimeraRelacionEntidad domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xdf4c3a24, 0x6b07, 0x4245, 0x92, 0xa9, 0x8b, 0x25, 0xad, 0xb1, 0x83, 0x88);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaPrimeraRelacionEntidad(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaPrimeraRelacionEntidad(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace DNF.DCJITRFPFProyectoIPS
{
	/// <summary>
	/// DomainClass MetaforaSegundaRelacionEntidad
	/// Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaSegundaRelacionEntidad
	/// </summary>
	[DslDesign::DisplayNameResource("DNF.DCJITRFPFProyectoIPS.MetaforaSegundaRelacionEntidad.DisplayName", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("DNF.DCJITRFPFProyectoIPS.MetaforaSegundaRelacionEntidad.Description", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("993d7c38-30b1-4419-a1f8-45f34f4617d0")]
	public partial class MetaforaSegundaRelacionEntidad : DslDiagrams::BinaryLinkShape
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with MetaforaSegundaRelacionEntidad.
		/// </summary>
		public static DslDiagrams::Decorator FindMetaforaSegundaRelacionEntidadDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		
		/// <summary>
		/// Shape instance initialization.
		/// </summary>
		public override void OnInitialize()
		{
			base.OnInitialize();
			
			// Create host shapes for outer decorators.
			foreach(DslDiagrams::Decorator decorator in this.Decorators)
			{
				if(decorator.RequiresHost)
				{
					decorator.ConfigureHostShape(this);
				}
			}
			
		}
		#endregion
		
		#region Connector styles
		#endregion
		
		#region Decorators
		/// <summary>
		/// Initialize the collection of shape fields associated with this shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
		}
		
		/// <summary>
		/// Initialize the collection of decorators associated with this shape type.  This method also
		/// creates shape fields for outer decorators, because these are not part of the shape fields collection
		/// associated with the shape, so they must be created here rather than in InitializeShapeFields.
		/// </summary>
		protected override void InitializeDecorators(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields, global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators)
		{
			base.InitializeDecorators(shapeFields, decorators);
			
			DslDiagrams::TextField field1 = new DslDiagrams::TextField("Cardi1");
			field1.DefaultText = global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel.SingletonResourceManager.GetString("MetaforaSegundaRelacionEntidadCardi1DefaultText");
			field1.DefaultFocusable = true;
			field1.DefaultAutoSize = true;
			field1.AnchoringBehavior.MinimumHeightInLines = 1;
			field1.AnchoringBehavior.MinimumWidthInCharacters = 1;
			field1.DefaultAccessibleState = global::System.Windows.Forms.AccessibleStates.Invisible;
			DslDiagrams::Decorator decorator1 = new DslDiagrams::ConnectorDecorator(field1, DslDiagrams::ConnectorDecoratorPosition.TargetTop, DslDiagrams::PointD.Empty);
			decorators.Add(decorator1);
				
		}
		
		#endregion
		
		#region Constructors, domain class Id
	
		/// <summary>
		/// MetaforaSegundaRelacionEntidad domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x993d7c38, 0x30b1, 0x4419, 0xa1, 0xf8, 0x45, 0xf3, 0x4f, 0x46, 0x17, 0xd0);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaSegundaRelacionEntidad(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaSegundaRelacionEntidad(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace DNF.DCJITRFPFProyectoIPS
{
	/// <summary>
	/// DomainClass MetaforaRelacionRefAtributo
	/// Description for DNF.DCJITRFPFProyectoIPS.MetaforaRelacionRefAtributo
	/// </summary>
	[DslDesign::DisplayNameResource("DNF.DCJITRFPFProyectoIPS.MetaforaRelacionRefAtributo.DisplayName", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("DNF.DCJITRFPFProyectoIPS.MetaforaRelacionRefAtributo.Description", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("8cd790f2-a8c9-4336-aabc-2f0ea46a2399")]
	public partial class MetaforaRelacionRefAtributo : DslDiagrams::BinaryLinkShape
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with MetaforaRelacionRefAtributo.
		/// </summary>
		public static DslDiagrams::Decorator FindMetaforaRelacionRefAtributoDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		#endregion
		
		#region Connector styles
		#endregion
		
		#region Constructors, domain class Id
	
		/// <summary>
		/// MetaforaRelacionRefAtributo domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x8cd790f2, 0xa8c9, 0x4336, 0xaa, 0xbc, 0x2f, 0x0e, 0xa4, 0x6a, 0x23, 0x99);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaRelacionRefAtributo(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaRelacionRefAtributo(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace DNF.DCJITRFPFProyectoIPS
{
	/// <summary>
	/// DomainClass MetaforaRelacionPaginaWebEntidad
	/// Description for DNF.DCJITRFPFProyectoIPS.MetaforaRelacionPaginaWebEntidad
	/// </summary>
	[DslDesign::DisplayNameResource("DNF.DCJITRFPFProyectoIPS.MetaforaRelacionPaginaWebEntidad.DisplayName", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("DNF.DCJITRFPFProyectoIPS.MetaforaRelacionPaginaWebEntidad.Description", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("8a5178a0-c261-43d3-b664-e86533bd8dac")]
	public partial class MetaforaRelacionPaginaWebEntidad : DslDiagrams::BinaryLinkShape
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with MetaforaRelacionPaginaWebEntidad.
		/// </summary>
		public static DslDiagrams::Decorator FindMetaforaRelacionPaginaWebEntidadDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		#endregion
		
		#region Connector styles
		#endregion
		
		#region Constructors, domain class Id
	
		/// <summary>
		/// MetaforaRelacionPaginaWebEntidad domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x8a5178a0, 0xc261, 0x43d3, 0xb6, 0x64, 0xe8, 0x65, 0x33, 0xbd, 0x8d, 0xac);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaRelacionPaginaWebEntidad(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaRelacionPaginaWebEntidad(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace DNF.DCJITRFPFProyectoIPS
{
	/// <summary>
	/// DomainClass MetaforaRelacionFormularioAtributo
	/// Description for DNF.DCJITRFPFProyectoIPS.MetaforaRelacionFormularioAtributo
	/// </summary>
	[DslDesign::DisplayNameResource("DNF.DCJITRFPFProyectoIPS.MetaforaRelacionFormularioAtributo.DisplayName", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("DNF.DCJITRFPFProyectoIPS.MetaforaRelacionFormularioAtributo.Description", typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel), "DNF.DCJITRFPFProyectoIPS.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("501ac129-8ed0-4dea-90dd-9970b2ccec5d")]
	public partial class MetaforaRelacionFormularioAtributo : DslDiagrams::BinaryLinkShape
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with MetaforaRelacionFormularioAtributo.
		/// </summary>
		public static DslDiagrams::Decorator FindMetaforaRelacionFormularioAtributoDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		#endregion
		
		#region Connector styles
		#endregion
		
		#region Constructors, domain class Id
	
		/// <summary>
		/// MetaforaRelacionFormularioAtributo domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x501ac129, 0x8ed0, 0x4dea, 0x90, 0xdd, 0x99, 0x70, 0xb2, 0xcc, 0xec, 0x5d);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaRelacionFormularioAtributo(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public MetaforaRelacionFormularioAtributo(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
