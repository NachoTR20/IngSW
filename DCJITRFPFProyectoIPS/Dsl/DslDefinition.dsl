<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="3b42f749-f860-4245-85ed-46806663e597" Description="Description for DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPS" Name="DCJITRFPFProyectoIPS" DisplayName="DCJITRFPFProyectoIPS" Namespace="DNF.DCJITRFPFProyectoIPS" ProductName="DCJITRFPFProyectoIPS" CompanyName="DNF" PackageGuid="5b9ef4f6-fde6-43d2-842c-f7a9f9572976" PackageNamespace="DNF.DCJITRFPFProyectoIPS" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="84b77764-13ad-4de7-9623-984eac7fa743" Description="The root in which all other elements are embedded. Appears as a diagram." Name="TapizER" DisplayName="Tapiz ER" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Properties>
        <DomainProperty Id="3b2d6f74-2fd5-4e24-be48-b75b269d8074" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizER.Solucion ER" Name="solucionER" DisplayName="Solucion ER">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Entidad" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizERTieneEntidad.Entidad</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Atributo" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizERTieneAtributo.Atributo</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Relacion" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizERTieneRelacion.Relacion</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="EstiloPortalWeb" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizERTieneEstiloPortalWeb.EstiloPortalWeb</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="EstiloPaginaWeb" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizERTieneEstiloPaginaWeb.EstiloPaginaWeb</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="EstiloFormulario" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizERHasEstiloFormulario.EstiloFormulario</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="6232def3-bf10-4a6a-a780-2272f8868cc9" Description="Descripción de DNF.DCJITRFPFProyectoIPS.Entidad" Name="Entidad" DisplayName="Entidad" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Properties>
        <DomainProperty Id="9ab8f6ef-18bb-434e-84c0-d2a1071c08f9" Description="Descripción de DNF.DCJITRFPFProyectoIPS.Entidad.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="347787c0-125d-4b9f-a6ac-96252de61f38" Description="Descripción de DNF.DCJITRFPFProyectoIPS.Atributo" Name="Atributo" DisplayName="Atributo" InheritanceModifier="Abstract" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Properties>
        <DomainProperty Id="912e40eb-e0d5-4f61-96c2-a8b66799b93d" Description="Descripción de DNF.DCJITRFPFProyectoIPS.Atributo.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="188d8056-946a-4fcc-963d-451d4dfe75f4" Description="Description for DNF.DCJITRFPFProyectoIPS.Atributo.Tipo Dato" Name="tipoDato" DisplayName="Tipo Dato">
          <Type>
            <DomainEnumerationMoniker Name="TipoAtributo" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c5e36436-f62e-43bf-9dff-751100d02933" Description="Description for DNF.DCJITRFPFProyectoIPS.Atributo.Longitud" Name="longitud" DisplayName="Longitud">
          <Type>
            <ExternalTypeMoniker Name="/System/Int16" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="3f360aee-fb6c-46f0-9964-4549d6e63340" Description="Descripción de DNF.DCJITRFPFProyectoIPS.AtributoNM" Name="AtributoNM" DisplayName="Atributo NM" Namespace="DNF.DCJITRFPFProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Atributo" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="96e547b0-9b18-4589-90b8-4666473ecd54" Description="Description for DNF.DCJITRFPFProyectoIPS.AtributoNM.Admite Repetidos" Name="AdmiteRepetidos" DisplayName="Admite Repetidos">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="1a8c1e28-c65d-47a8-b4a0-7702ee00d99b" Description="Description for DNF.DCJITRFPFProyectoIPS.AtributoNM.Admite No Nulos" Name="AdmiteNoNulos" DisplayName="Admite No Nulos">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="857dbe90-544b-4c48-8bde-097365002739" Description="Descripción de DNF.DCJITRFPFProyectoIPS.ClavePrimaria" Name="ClavePrimaria" DisplayName="Clave Primaria" Namespace="DNF.DCJITRFPFProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Atributo" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="20b6811a-596a-4925-b94c-4ae83117fbda" Description="Descripción de DNF.DCJITRFPFProyectoIPS.Relacion" Name="Relacion" DisplayName="Relacion" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Properties>
        <DomainProperty Id="d225b14a-8fd7-4979-8e1b-7f7c53ee8c62" Description="Descripción de DNF.DCJITRFPFProyectoIPS.Relacion.Nombre" Name="nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="8fdad26c-7b81-4967-81db-bc018776ea91" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPortalWeb" Name="EstiloPortalWeb" DisplayName="Estilo Portal Web" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Properties>
        <DomainProperty Id="462df857-093d-4b1b-aa0a-8efa4e95540a" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPortalWeb.Estilos" Name="Estilos" DisplayName="Estilos" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0cec842b-9663-4f6d-a338-3eb530076cb7" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPortalWeb.Titulo" Name="Titulo" DisplayName="Titulo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6c90f03d-c32e-4c01-a6ee-1fc2d79c1a26" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPortalWeb.Color Titulo" Name="ColorTitulo" DisplayName="Color Titulo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d6d57d05-c0a8-46a0-aa8c-dfd623318ca9" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPortalWeb.Color Fondo" Name="ColorFondo" DisplayName="Color Fondo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="67c63eb9-7bf5-4d85-bb46-c89fd16156c6" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPortalWeb.Tamaño Titulo" Name="TamañoTitulo" DisplayName="Tamaño Titulo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="62776764-d86f-4939-bda3-8edd5e72653e" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPortalWeb.Alineacion Titulo" Name="AlineacionTitulo" DisplayName="Alineacion Titulo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c2313339-f627-45fa-a259-f13e8aaf868b" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPortalWeb.Tipo Letra Titulo" Name="TipoLetraTitulo" DisplayName="Tipo Letra Titulo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="cb753276-34da-4aad-a47f-23dd1699cc12" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPaginaWeb" Name="EstiloPaginaWeb" DisplayName="Estilo Pagina Web" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Properties>
        <DomainProperty Id="e61f9e1a-7644-417d-b2c4-94d2d988ba42" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPaginaWeb.Estilos" Name="Estilos" DisplayName="Estilos" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="fe15efd6-ef73-44de-84d2-f26744c8bc4f" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPaginaWeb.Color Titulo" Name="ColorTitulo" DisplayName="Color Titulo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d598f870-6eb3-49cf-a354-58b29bdb9dbd" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPaginaWeb.Tamaño Titulo" Name="TamañoTitulo" DisplayName="Tamaño Titulo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="cb6ec34d-fe40-4aaa-9525-f544fb6dad1f" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPaginaWeb.Alineacion Titulo" Name="AlineacionTitulo" DisplayName="Alineacion Titulo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0afce79a-4020-4f56-8165-d31ae598e0a9" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EstiloPaginaWeb.Tipo Letra Titulo" Name="TipoLetraTitulo" DisplayName="Tipo Letra Titulo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="9bbc00ae-1598-4e62-9336-0a48f0157682" Description="Description for DNF.DCJITRFPFProyectoIPS.EstiloFormulario" Name="EstiloFormulario" DisplayName="Estilo Formulario" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Properties>
        <DomainProperty Id="baef2997-f89c-4baa-af16-890dbd52b2b4" Description="Description for DNF.DCJITRFPFProyectoIPS.EstiloFormulario.Estilos" Name="Estilos" DisplayName="Estilos" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2ed31b28-4d58-4beb-9010-50373c4fb73a" Description="Description for DNF.DCJITRFPFProyectoIPS.EstiloFormulario.Color Formulario" Name="ColorFormulario" DisplayName="Color Formulario">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6e2c6695-a744-49c3-a0c9-ae590824993a" Description="Description for DNF.DCJITRFPFProyectoIPS.EstiloFormulario.Tamaño Formulario" Name="TamañoFormulario" DisplayName="Tamaño Formulario">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0658511e-b1c7-464e-8999-37c67cc2d502" Description="Description for DNF.DCJITRFPFProyectoIPS.EstiloFormulario.Alineacion Formulario" Name="AlineacionFormulario" DisplayName="Alineacion Formulario">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b6e4edbc-3ad5-4edf-aebd-029275eef971" Description="Description for DNF.DCJITRFPFProyectoIPS.EstiloFormulario.Tipo Letra Campo" Name="TipoLetraCampo" DisplayName="Tipo Letra Campo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="3d5dce22-974d-4877-ae69-d467cb0617fb" Description="Description for DNF.DCJITRFPFProyectoIPS.EstiloFormulario.Formatos Visualizacion" Name="FormatosVisualizacion" DisplayName="Formatos Visualizacion">
          <Type>
            <DomainEnumerationMoniker Name="FormatosVisualizacion" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="3a594a0c-808a-419c-aa1c-5a801b9700a7" Description="Description for DNF.DCJITRFPFProyectoIPS.EstiloFormulario.Tipo Atributo" Name="TipoAtributo" DisplayName="Tipo Atributo">
          <Type>
            <DomainEnumerationMoniker Name="TipoAtributo" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="4c2a5cf4-f753-48d7-9930-dda96a8a89c9" Description="Description for DNF.DCJITRFPFProyectoIPS.AtributoRelacion" Name="AtributoRelacion" DisplayName="Atributo Relacion" Namespace="DNF.DCJITRFPFProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Atributo" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="d275d851-7b41-4db6-9530-7092d86996d4" Description="Description for DNF.DCJITRFPFProyectoIPS.AtributoRelacion.Admite Repetidos" Name="AdmiteRepetidos" DisplayName="Admite Repetidos">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="26426206-ccde-44e5-aee5-8fdf68f8f767" Description="Description for DNF.DCJITRFPFProyectoIPS.AtributoRelacion.Admite No Nulos" Name="AdmiteNoNulos" DisplayName="Admite No Nulos">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="d420979d-937e-4c70-8b39-826652d8e000" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneEntidad" Name="TapizERTieneEntidad" DisplayName="Tapiz ERTiene Entidad" Namespace="DNF.DCJITRFPFProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="1f037356-c73a-4d37-9868-9a964a6b226f" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneEntidad.TapizER" Name="TapizER" DisplayName="Tapiz ER" PropertyName="Entidad" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Entidad">
          <RolePlayer>
            <DomainClassMoniker Name="TapizER" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="a54cff3d-9224-4b2b-b0b3-27b3b5b97f60" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneEntidad.Entidad" Name="Entidad" DisplayName="Entidad" PropertyName="TapizER" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz ER">
          <RolePlayer>
            <DomainClassMoniker Name="Entidad" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="a6c5ed7f-c409-42b5-b454-3a7a67daa012" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneAtributo" Name="TapizERTieneAtributo" DisplayName="Tapiz ERTiene Atributo" Namespace="DNF.DCJITRFPFProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="63426ef6-2bb2-4bfa-9c4b-0acf4f3c5500" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneAtributo.TapizER" Name="TapizER" DisplayName="Tapiz ER" PropertyName="Atributo" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Atributo">
          <RolePlayer>
            <DomainClassMoniker Name="TapizER" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="8bee7bab-f6dc-4702-a018-cee1cde355fe" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneAtributo.Atributo" Name="Atributo" DisplayName="Atributo" PropertyName="TapizER" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz ER">
          <RolePlayer>
            <DomainClassMoniker Name="Atributo" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="6f48ab81-aa70-4b95-bde4-f2969002a2d3" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EntidadReferenciasAtributo" Name="EntidadReferenciasAtributo" DisplayName="Entidad Referencias Atributo" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Source>
        <DomainRole Id="15c91d2b-e921-436a-a026-322796b67076" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EntidadReferenciasAtributo.Entidad" Name="Entidad" DisplayName="Entidad" PropertyName="Atributo" Multiplicity="OneMany" PropertyDisplayName="Atributo">
          <RolePlayer>
            <DomainClassMoniker Name="Entidad" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="ef7c5616-d22d-4f0a-9dd2-45e2b1cd4ed3" Description="Descripción de DNF.DCJITRFPFProyectoIPS.EntidadReferenciasAtributo.Atributo" Name="Atributo" DisplayName="Atributo" PropertyName="Entidad" PropertyDisplayName="Entidad">
          <RolePlayer>
            <DomainClassMoniker Name="Atributo" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="8d9760eb-4408-420e-a412-612b16a429b4" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneRelacion" Name="TapizERTieneRelacion" DisplayName="Tapiz ERTiene Relacion" Namespace="DNF.DCJITRFPFProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="b4948932-22f3-46a7-b13f-3803c705463a" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneRelacion.TapizER" Name="TapizER" DisplayName="Tapiz ER" PropertyName="Relacion" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Relacion">
          <RolePlayer>
            <DomainClassMoniker Name="TapizER" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c0e1755e-9ba1-42c2-a9f5-e3216962581d" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneRelacion.Relacion" Name="Relacion" DisplayName="Relacion" PropertyName="TapizER" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz ER">
          <RolePlayer>
            <DomainClassMoniker Name="Relacion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="281f609e-536f-4797-ae0f-e67def3bfd78" Description="Descripción de DNF.DCJITRFPFProyectoIPS.PrimeraRelacionReferenciasEntidad" Name="PrimeraRelacionReferenciasEntidad" DisplayName="Primera Relacion Referencias Entidad" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Properties>
        <DomainProperty Id="9a8e3337-8f42-4bff-b285-41ffb9404cc2" Description="Description for DNF.DCJITRFPFProyectoIPS.PrimeraRelacionReferenciasEntidad.Cardinalidad" Name="Cardinalidad" DisplayName="Cardinalidad">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidades" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="1f88b842-bd47-4e1f-b722-162920d3b7cb" Description="Descripción de DNF.DCJITRFPFProyectoIPS.PrimeraRelacionReferenciasEntidad.Relacion" Name="Relacion" DisplayName="Relacion" PropertyName="PEntidad" Multiplicity="ZeroOne" PropertyDisplayName="PEntidad">
          <RolePlayer>
            <DomainClassMoniker Name="Relacion" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="d2dbc198-e0f2-43ae-80d8-c6ccbf73cee1" Description="Descripción de DNF.DCJITRFPFProyectoIPS.PrimeraRelacionReferenciasEntidad.Entidad" Name="Entidad" DisplayName="Entidad" PropertyName="PRelacion" PropertyDisplayName="PRelacion">
          <RolePlayer>
            <DomainClassMoniker Name="Entidad" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="3fea3e07-bbef-40dd-85ec-668fc98453a7" Description="Descripción de DNF.DCJITRFPFProyectoIPS.SegundaRelacionReferenciasEntidad" Name="SegundaRelacionReferenciasEntidad" DisplayName="Segunda Relacion Referencias Entidad" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Properties>
        <DomainProperty Id="2389a757-6304-4864-8f3c-c986e9758248" Description="Description for DNF.DCJITRFPFProyectoIPS.SegundaRelacionReferenciasEntidad.Cardinalidad" Name="Cardinalidad" DisplayName="Cardinalidad">
          <Type>
            <DomainEnumerationMoniker Name="Cardinalidades" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="0a6ba58a-5fdf-445b-93d1-4facac8bc487" Description="Descripción de DNF.DCJITRFPFProyectoIPS.SegundaRelacionReferenciasEntidad.Relacion" Name="Relacion" DisplayName="Relacion" PropertyName="Entidad" Multiplicity="ZeroOne" PropertyDisplayName="Entidad">
          <RolePlayer>
            <DomainClassMoniker Name="Relacion" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="0f04ae1f-9dc6-40ec-8df3-debbd7574ac5" Description="Descripción de DNF.DCJITRFPFProyectoIPS.SegundaRelacionReferenciasEntidad.Entidad" Name="Entidad" DisplayName="Entidad" PropertyName="Relacion" PropertyDisplayName="Relacion">
          <RolePlayer>
            <DomainClassMoniker Name="Entidad" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="29963762-3880-4568-873f-2df5999ead34" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneEstiloPortalWeb" Name="TapizERTieneEstiloPortalWeb" DisplayName="Tapiz ERTiene Estilo Portal Web" Namespace="DNF.DCJITRFPFProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="cc006b79-e696-409c-8c80-78d9eee05d7d" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneEstiloPortalWeb.TapizER" Name="TapizER" DisplayName="Tapiz ER" PropertyName="EstiloPortalWeb" Multiplicity="ZeroOne" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Estilo Portal Web">
          <RolePlayer>
            <DomainClassMoniker Name="TapizER" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="2d412ee1-b1df-4a79-be26-75087328e3fe" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneEstiloPortalWeb.EstiloPortalWeb" Name="EstiloPortalWeb" DisplayName="Estilo Portal Web" PropertyName="TapizER" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz ER">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloPortalWeb" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="3e27a4b7-5618-477b-9ba1-3d4d6d728ce7" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneEstiloPaginaWeb" Name="TapizERTieneEstiloPaginaWeb" DisplayName="Tapiz ERTiene Estilo Pagina Web" Namespace="DNF.DCJITRFPFProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="85333d0f-3388-4cd8-8f45-49f2c93dcbb5" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneEstiloPaginaWeb.TapizER" Name="TapizER" DisplayName="Tapiz ER" PropertyName="EstiloPaginaWeb" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Estilo Pagina Web">
          <RolePlayer>
            <DomainClassMoniker Name="TapizER" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="74135260-b334-46f2-8a74-bee7c7d1bce3" Description="Descripción de DNF.DCJITRFPFProyectoIPS.TapizERTieneEstiloPaginaWeb.EstiloPaginaWeb" Name="EstiloPaginaWeb" DisplayName="Estilo Pagina Web" PropertyName="TapizER" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz ER">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloPaginaWeb" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="10563cc5-2637-4ea9-b610-a5c01cf870db" Description="Description for DNF.DCJITRFPFProyectoIPS.TapizERHasEstiloFormulario" Name="TapizERHasEstiloFormulario" DisplayName="Tapiz ERHas Estilo Formulario" Namespace="DNF.DCJITRFPFProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="729b3eb9-0370-450c-925c-ee0ed555ead4" Description="Description for DNF.DCJITRFPFProyectoIPS.TapizERHasEstiloFormulario.TapizER" Name="TapizER" DisplayName="Tapiz ER" PropertyName="EstiloFormulario" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Estilo Formulario">
          <RolePlayer>
            <DomainClassMoniker Name="TapizER" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c90b577b-a3d4-405f-9618-00d4337c18f1" Description="Description for DNF.DCJITRFPFProyectoIPS.TapizERHasEstiloFormulario.EstiloFormulario" Name="EstiloFormulario" DisplayName="Estilo Formulario" PropertyName="TapizER" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz ER">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloFormulario" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="83da72fa-128c-4f10-bd65-df517bc3b8dd" Description="Description for DNF.DCJITRFPFProyectoIPS.AtributoRelacionReferencesRelacion" Name="AtributoRelacionReferencesRelacion" DisplayName="Atributo Relacion References Relacion" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Source>
        <DomainRole Id="048ad076-474b-47eb-82e9-98a0feff59bf" Description="Description for DNF.DCJITRFPFProyectoIPS.AtributoRelacionReferencesRelacion.AtributoRelacion" Name="AtributoRelacion" DisplayName="Atributo Relacion" PropertyName="Relacion" Multiplicity="One" PropertyDisplayName="Relacion">
          <RolePlayer>
            <DomainClassMoniker Name="AtributoRelacion" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="03207ed0-eca8-4210-8b3c-6f089d4ab5d4" Description="Description for DNF.DCJITRFPFProyectoIPS.AtributoRelacionReferencesRelacion.Relacion" Name="Relacion" DisplayName="Relacion" PropertyName="AtributoRelacion" PropertyDisplayName="Atributo Relacion">
          <RolePlayer>
            <DomainClassMoniker Name="Relacion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="ea94f4fd-c894-4545-8bb1-0aae7ad67195" Description="Description for DNF.DCJITRFPFProyectoIPS.EntidadReferencesEstiloPaginaWeb" Name="EntidadReferencesEstiloPaginaWeb" DisplayName="Entidad References Estilo Pagina Web" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Source>
        <DomainRole Id="b834af56-f628-4ddd-af7c-eb6d24b991cf" Description="Description for DNF.DCJITRFPFProyectoIPS.EntidadReferencesEstiloPaginaWeb.Entidad" Name="Entidad" DisplayName="Entidad" PropertyName="EstiloPaginaWeb" Multiplicity="One" PropertyDisplayName="Estilo Pagina Web">
          <RolePlayer>
            <DomainClassMoniker Name="Entidad" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="bb9c43e0-eb3f-484e-a731-da28b48c4601" Description="Description for DNF.DCJITRFPFProyectoIPS.EntidadReferencesEstiloPaginaWeb.EstiloPaginaWeb" Name="EstiloPaginaWeb" DisplayName="Estilo Pagina Web" PropertyName="Entidad" PropertyDisplayName="Entidad">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloPaginaWeb" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="977f8ac0-9cbc-484f-abaa-770004b74c21" Description="Description for DNF.DCJITRFPFProyectoIPS.AtributoReferencesEstiloFormulario" Name="AtributoReferencesEstiloFormulario" DisplayName="Atributo References Estilo Formulario" Namespace="DNF.DCJITRFPFProyectoIPS">
      <Source>
        <DomainRole Id="c5876136-688a-4d0b-92f4-23957aa76f0e" Description="Description for DNF.DCJITRFPFProyectoIPS.AtributoReferencesEstiloFormulario.Atributo" Name="Atributo" DisplayName="Atributo" PropertyName="EstiloFormulario" Multiplicity="One" PropertyDisplayName="Estilo Formulario">
          <RolePlayer>
            <DomainClassMoniker Name="Atributo" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="cba430a2-6f9b-423c-a888-7b4ea34bbb64" Description="Description for DNF.DCJITRFPFProyectoIPS.AtributoReferencesEstiloFormulario.EstiloFormulario" Name="EstiloFormulario" DisplayName="Estilo Formulario" PropertyName="Atributo" PropertyDisplayName="Atributo">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloFormulario" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
    <DomainEnumeration Name="FormatosVisualizacion" Namespace="DNF.DCJITRFPFProyectoIPS" Description="Description for DNF.DCJITRFPFProyectoIPS.FormatosVisualizacion">
      <Literals>
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.FormatosVisualizacion.AreaTexto" Name="AreaTexto" Value="" />
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.FormatosVisualizacion.Checkbox" Name="Checkbox" Value="" />
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.FormatosVisualizacion.RadioButton" Name="RadioButton" Value="" />
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.FormatosVisualizacion.ListaDesplegable" Name="ListaDesplegable" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="TipoAtributo" Namespace="DNF.DCJITRFPFProyectoIPS" Description="Description for DNF.DCJITRFPFProyectoIPS.TipoAtributo">
      <Literals>
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.TipoAtributo.Entero" Name="Entero" Value="0" />
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.TipoAtributo.Real" Name="Real" Value="1" />
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.TipoAtributo.Fecha" Name="Fecha" Value="3" />
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.TipoAtributo.Alfanumerico" Name="Alfanumerico" Value="2" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="Cardinalidades" Namespace="DNF.DCJITRFPFProyectoIPS" Description="Description for DNF.DCJITRFPFProyectoIPS.Cardinalidades">
      <Literals>
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.Cardinalidades.CeroUno" Name="CeroUno" Value="0" />
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.Cardinalidades.UnoUno" Name="UnoUno" Value="1" />
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.Cardinalidades.CeroMuchos" Name="CeroMuchos" Value="2" />
        <EnumerationLiteral Description="Description for DNF.DCJITRFPFProyectoIPS.Cardinalidades.UnoMuchos" Name="UnoMuchos" Value="3" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <GeometryShape Id="ab66c58a-d9a4-4b89-8fb1-886de098f2f1" Description="Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaEntidad" Name="MetaforaEntidad" DisplayName="Metafora Entidad" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Entidad" FillColor="LightCoral" InitialHeight="1" OutlineThickness="0.05" FillGradientMode="Vertical" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Texto" DisplayName="Texto" DefaultText="Texto" FontStyle="Bold" FontSize="12" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="4d63bf68-1f14-43d2-8eab-67c309e4860a" Description="Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaAtributoNM" Name="MetaforaAtributoNM" DisplayName="Metafora Atributo NM" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Atributo NM" FillColor="Pink" InitialWidth="0.75" InitialHeight="0.5" FillGradientMode="Vertical" Geometry="Ellipse">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Texto" DisplayName="Texto" DefaultText="Texto" FontStyle="Bold" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="a4f88f14-b811-4467-a7fc-82d70ac241d1" Description="Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaClavePrimaria" Name="MetaforaClavePrimaria" DisplayName="Metafora Clave Primaria" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Clave Primaria" FillColor="DeepSkyBlue" InitialWidth="0.75" InitialHeight="0.5" FillGradientMode="Vertical" Geometry="Ellipse">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Texto" DisplayName="Texto" DefaultText="Texto" FontStyle="Bold, Underline" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="9c92320d-0cdc-4800-966e-94d5114e2116" Description="Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaRelacion" Name="MetaforaRelacion" DisplayName="Metafora Relacion" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Relacion" FillColor="Gray" InitialWidth="1" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Texto" DisplayName="Texto" DefaultText="Texto" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="a9f79b1c-8a72-4142-9516-1d8f196a1637" Description="Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaPortalWeb" Name="MetaforaPortalWeb" DisplayName="Metafora Portal Web" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Portal Web" InitialWidth="3" InitialHeight="1.8" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Estilo" DisplayName="Estilo" DefaultText="Estilo" FontStyle="Bold" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="4ae6763e-0ae0-4804-98fe-a1ac029df5d9" Description="Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaPaginaWeb" Name="MetaforaPaginaWeb" DisplayName="Metafora Pagina Web" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Pagina Web" InitialWidth="3" InitialHeight="1.5" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Estilo" DisplayName="Estilo" DefaultText="Estilo" FontStyle="Bold" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="b74a6b77-190c-4013-bfd0-7415dc38d03f" Description="Description for DNF.DCJITRFPFProyectoIPS.MetaforaFormulario" Name="MetaforaFormulario" DisplayName="Metafora Formulario" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Formulario" InitialWidth="3" InitialHeight="1.8" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Estilo" DisplayName="Estilo" DefaultText="Estilo" FontStyle="Bold" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="3bf6a976-1445-4304-b092-971c514d67d9" Description="Description for DNF.DCJITRFPFProyectoIPS.MetaforaAtributoRelacion" Name="MetaforaAtributoRelacion" DisplayName="Metafora Atributo Relacion" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Atributo Relacion" FillColor="Pink" InitialWidth="0.75" InitialHeight="0.5" FillGradientMode="Vertical" Geometry="Ellipse">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Texto" DisplayName="Texto" DefaultText="Texto" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="7352e729-2ffa-42f2-b05a-3554bb39a209" Description="Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaEntidadRefAtributo" Name="MetaforaEntidadRefAtributo" DisplayName="Metafora Entidad Ref Atributo" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Entidad Ref Atributo" />
    <Connector Id="df4c3a24-6b07-4245-92a9-8b25adb18388" Description="Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaPrimeraRelacionEntidad" Name="MetaforaPrimeraRelacionEntidad" DisplayName="Metafora Primera Relacion Entidad" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Primera Relacion Entidad">
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="Card1" DisplayName="Card1" DefaultText="Card1" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="993d7c38-30b1-4419-a1f8-45f34f4617d0" Description="Descripción de DNF.DCJITRFPFProyectoIPS.MetaforaSegundaRelacionEntidad" Name="MetaforaSegundaRelacionEntidad" DisplayName="Metafora Segunda Relacion Entidad" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Segunda Relacion Entidad">
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="Cardi1" DisplayName="Cardi1" DefaultText="Cardi1" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="8cd790f2-a8c9-4336-aabc-2f0ea46a2399" Description="Description for DNF.DCJITRFPFProyectoIPS.MetaforaRelacionRefAtributo" Name="MetaforaRelacionRefAtributo" DisplayName="Metafora Relacion Ref Atributo" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Relacion Ref Atributo" />
    <Connector Id="8a5178a0-c261-43d3-b664-e86533bd8dac" Description="Description for DNF.DCJITRFPFProyectoIPS.MetaforaRelacionPaginaWebEntidad" Name="MetaforaRelacionPaginaWebEntidad" DisplayName="Metafora Relacion Pagina Web Entidad" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Relacion Pagina Web Entidad" />
    <Connector Id="501ac129-8ed0-4dea-90dd-9970b2ccec5d" Description="Description for DNF.DCJITRFPFProyectoIPS.MetaforaRelacionFormularioAtributo" Name="MetaforaRelacionFormularioAtributo" DisplayName="Metafora Relacion Formulario Atributo" Namespace="DNF.DCJITRFPFProyectoIPS" FixedTooltipText="Metafora Relacion Formulario Atributo" />
  </Connectors>
  <XmlSerializationBehavior Name="DCJITRFPFProyectoIPSSerializationBehavior" Namespace="DNF.DCJITRFPFProyectoIPS">
    <ClassData>
      <XmlClassData TypeName="TapizER" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="tapizER" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="TapizER" />
        <ElementData>
          <XmlPropertyData XmlName="solucionER">
            <DomainPropertyMoniker Name="TapizER/solucionER" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="entidad">
            <DomainRelationshipMoniker Name="TapizERTieneEntidad" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="atributo">
            <DomainRelationshipMoniker Name="TapizERTieneAtributo" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="relacion">
            <DomainRelationshipMoniker Name="TapizERTieneRelacion" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estiloPortalWeb">
            <DomainRelationshipMoniker Name="TapizERTieneEstiloPortalWeb" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estiloPaginaWeb">
            <DomainRelationshipMoniker Name="TapizERTieneEstiloPaginaWeb" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estiloFormulario">
            <DomainRelationshipMoniker Name="TapizERHasEstiloFormulario" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="DCJITRFPFProyectoIPSDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="dCJITRFPFProyectoIPSDiagramMoniker" ElementName="dCJITRFPFProyectoIPSDiagram" MonikerTypeName="DCJITRFPFProyectoIPSDiagramMoniker">
        <DiagramMoniker Name="DCJITRFPFProyectoIPSDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="Entidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="Entidad" ElementName="entidad" MonikerTypeName="Moniker Entidad">
        <DomainClassMoniker Name="Entidad" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Entidad/Nombre" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="atributo">
            <DomainRelationshipMoniker Name="EntidadReferenciasAtributo" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estiloPaginaWeb">
            <DomainRelationshipMoniker Name="EntidadReferencesEstiloPaginaWeb" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TapizERTieneEntidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="TapizERTieneEntidad" ElementName="tapizERTieneEntidad" MonikerTypeName="Moniker TapizERTieneEntidad">
        <DomainRelationshipMoniker Name="TapizERTieneEntidad" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaEntidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="MetaforaEntidad" ElementName="metaforaEntidad" MonikerTypeName="Moniker MetaforaEntidad">
        <GeometryShapeMoniker Name="MetaforaEntidad" />
      </XmlClassData>
      <XmlClassData TypeName="Atributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="Atributo" ElementName="atributo" MonikerTypeName="Moniker Atributo">
        <DomainClassMoniker Name="Atributo" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Atributo/Nombre" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estiloFormulario">
            <DomainRelationshipMoniker Name="AtributoReferencesEstiloFormulario" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="tipoDato">
            <DomainPropertyMoniker Name="Atributo/tipoDato" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="longitud">
            <DomainPropertyMoniker Name="Atributo/longitud" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MetaforaAtributoNM" MonikerAttributeName="" SerializeId="true" MonikerElementName="MetaforaAtributoNM" ElementName="metaforaAtributoNM" MonikerTypeName="Moniker MetaforaAtributoNM">
        <GeometryShapeMoniker Name="MetaforaAtributoNM" />
      </XmlClassData>
      <XmlClassData TypeName="AtributoNM" MonikerAttributeName="" SerializeId="true" MonikerElementName="AtributoNM" ElementName="atributoNM" MonikerTypeName="Moniker AtributoNM">
        <DomainClassMoniker Name="AtributoNM" />
        <ElementData>
          <XmlPropertyData XmlName="admiteRepetidos">
            <DomainPropertyMoniker Name="AtributoNM/AdmiteRepetidos" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="admiteNoNulos">
            <DomainPropertyMoniker Name="AtributoNM/AdmiteNoNulos" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TapizERTieneAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="TapizERTieneAtributo" ElementName="tapizERTieneAtributo" MonikerTypeName="Moniker TapizERTieneAtributo">
        <DomainRelationshipMoniker Name="TapizERTieneAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="EntidadReferenciasAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="EntidadReferenciasAtributo" ElementName="entidadReferenciasAtributo" MonikerTypeName="Moniker EntidadReferenciasAtributo">
        <DomainRelationshipMoniker Name="EntidadReferenciasAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaEntidadRefAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="MetaforaEntidadRefAtributo" ElementName="metaforaEntidadRefAtributo" MonikerTypeName="Moniker MetaforaEntidadRefAtributo">
        <ConnectorMoniker Name="MetaforaEntidadRefAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="ClavePrimaria" MonikerAttributeName="" SerializeId="true" MonikerElementName="ClavePrimaria" ElementName="clavePrimaria" MonikerTypeName="Moniker ClavePrimaria">
        <DomainClassMoniker Name="ClavePrimaria" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaClavePrimaria" MonikerAttributeName="" SerializeId="true" MonikerElementName="GeometryShape1" ElementName="metaforaClavePrimaria" MonikerTypeName="Moniker MetaforaClavePrimaria">
        <GeometryShapeMoniker Name="MetaforaClavePrimaria" />
      </XmlClassData>
      <XmlClassData TypeName="Relacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="Relacion" ElementName="relacion" MonikerTypeName="Moniker Relacion">
        <DomainClassMoniker Name="Relacion" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="pEntidad">
            <DomainRelationshipMoniker Name="PrimeraRelacionReferenciasEntidad" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="entidad">
            <DomainRelationshipMoniker Name="SegundaRelacionReferenciasEntidad" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Relacion/nombre" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TapizERTieneRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="TapizERTieneRelacion" ElementName="tapizERTieneRelacion" MonikerTypeName="Moniker TapizERTieneRelacion">
        <DomainRelationshipMoniker Name="TapizERTieneRelacion" />
      </XmlClassData>
      <XmlClassData TypeName="PrimeraRelacionReferenciasEntidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="PrimeraRelacionReferenciasEntidad" ElementName="primeraRelacionReferenciasEntidad" MonikerTypeName="Moniker PrimeraRelacionReferenciasEntidad">
        <DomainRelationshipMoniker Name="PrimeraRelacionReferenciasEntidad" />
        <ElementData>
          <XmlPropertyData XmlName="cardinalidad">
            <DomainPropertyMoniker Name="PrimeraRelacionReferenciasEntidad/Cardinalidad" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="SegundaRelacionReferenciasEntidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="SegundaRelacionReferenciasEntidad" ElementName="segundaRelacionReferenciasEntidad" MonikerTypeName="Moniker SegundaRelacionReferenciasEntidad">
        <DomainRelationshipMoniker Name="SegundaRelacionReferenciasEntidad" />
        <ElementData>
          <XmlPropertyData XmlName="cardinalidad">
            <DomainPropertyMoniker Name="SegundaRelacionReferenciasEntidad/Cardinalidad" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MetaforaRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="MetaforaRelacion" ElementName="metaforaRelacion" MonikerTypeName="Moniker MetaforaRelacion">
        <GeometryShapeMoniker Name="MetaforaRelacion" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaPrimeraRelacionEntidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="MetaforaPrimeraRelacionEntidad" ElementName="metaforaPrimeraRelacionEntidad" MonikerTypeName="Moniker MetaforaPrimeraRelacionEntidad">
        <ConnectorMoniker Name="MetaforaPrimeraRelacionEntidad" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaSegundaRelacionEntidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="MetaforaSegundaRelacionEntidad" ElementName="metaforaSegundaRelacionEntidad" MonikerTypeName="Moniker MetaforaSegundaRelacionEntidad">
        <ConnectorMoniker Name="MetaforaSegundaRelacionEntidad" />
      </XmlClassData>
      <XmlClassData TypeName="EstiloPortalWeb" MonikerAttributeName="" SerializeId="true" MonikerElementName="EstiloPortalWeb" ElementName="estiloPortalWeb" MonikerTypeName="Moniker EstiloPortalWeb">
        <DomainClassMoniker Name="EstiloPortalWeb" />
        <ElementData>
          <XmlPropertyData XmlName="estilos" Representation="Ignore">
            <DomainPropertyMoniker Name="EstiloPortalWeb/Estilos" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="titulo">
            <DomainPropertyMoniker Name="EstiloPortalWeb/Titulo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorTitulo">
            <DomainPropertyMoniker Name="EstiloPortalWeb/ColorTitulo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorFondo">
            <DomainPropertyMoniker Name="EstiloPortalWeb/ColorFondo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tamañoTitulo">
            <DomainPropertyMoniker Name="EstiloPortalWeb/TamañoTitulo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="alineacionTitulo">
            <DomainPropertyMoniker Name="EstiloPortalWeb/AlineacionTitulo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipoLetraTitulo">
            <DomainPropertyMoniker Name="EstiloPortalWeb/TipoLetraTitulo" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TapizERTieneEstiloPortalWeb" MonikerAttributeName="" SerializeId="true" MonikerElementName="TapizERTieneEstiloPortalWeb" ElementName="tapizERTieneEstiloPortalWeb" MonikerTypeName="Moniker TapizERTieneEstiloPortalWeb">
        <DomainRelationshipMoniker Name="TapizERTieneEstiloPortalWeb" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaPortalWeb" MonikerAttributeName="" SerializeId="true" MonikerElementName="MetaforaPortalWeb" ElementName="metaforaPortalWeb" MonikerTypeName="Moniker MetaforaPortalWeb">
        <GeometryShapeMoniker Name="MetaforaPortalWeb" />
      </XmlClassData>
      <XmlClassData TypeName="EstiloPaginaWeb" MonikerAttributeName="" SerializeId="true" MonikerElementName="EstiloPaginaWeb" ElementName="estiloPaginaWeb" MonikerTypeName="Moniker EstiloPaginaWeb">
        <DomainClassMoniker Name="EstiloPaginaWeb" />
        <ElementData>
          <XmlPropertyData XmlName="estilos" Representation="Ignore">
            <DomainPropertyMoniker Name="EstiloPaginaWeb/Estilos" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorTitulo">
            <DomainPropertyMoniker Name="EstiloPaginaWeb/ColorTitulo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tamañoTitulo">
            <DomainPropertyMoniker Name="EstiloPaginaWeb/TamañoTitulo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="alineacionTitulo">
            <DomainPropertyMoniker Name="EstiloPaginaWeb/AlineacionTitulo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipoLetraTitulo">
            <DomainPropertyMoniker Name="EstiloPaginaWeb/TipoLetraTitulo" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TapizERTieneEstiloPaginaWeb" MonikerAttributeName="" SerializeId="true" MonikerElementName="TapizERTieneEstiloPaginaWeb" ElementName="tapizERTieneEstiloPaginaWeb" MonikerTypeName="Moniker TapizERTieneEstiloPaginaWeb">
        <DomainRelationshipMoniker Name="TapizERTieneEstiloPaginaWeb" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaPaginaWeb" MonikerAttributeName="" SerializeId="true" MonikerElementName="MetaforaPaginaWeb" ElementName="metaforaPaginaWeb" MonikerTypeName="Moniker MetaforaPaginaWeb">
        <GeometryShapeMoniker Name="MetaforaPaginaWeb" />
      </XmlClassData>
      <XmlClassData TypeName="EstiloFormulario" MonikerAttributeName="" SerializeId="true" MonikerElementName="estiloFormularioMoniker" ElementName="estiloFormulario" MonikerTypeName="EstiloFormularioMoniker">
        <DomainClassMoniker Name="EstiloFormulario" />
        <ElementData>
          <XmlPropertyData XmlName="estilos" Representation="Ignore">
            <DomainPropertyMoniker Name="EstiloFormulario/Estilos" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorFormulario">
            <DomainPropertyMoniker Name="EstiloFormulario/ColorFormulario" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tamañoFormulario">
            <DomainPropertyMoniker Name="EstiloFormulario/TamañoFormulario" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="alineacionFormulario">
            <DomainPropertyMoniker Name="EstiloFormulario/AlineacionFormulario" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipoLetraCampo">
            <DomainPropertyMoniker Name="EstiloFormulario/TipoLetraCampo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="formatosVisualizacion">
            <DomainPropertyMoniker Name="EstiloFormulario/FormatosVisualizacion" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipoAtributo">
            <DomainPropertyMoniker Name="EstiloFormulario/TipoAtributo" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TapizERHasEstiloFormulario" MonikerAttributeName="" SerializeId="true" MonikerElementName="tapizERHasEstiloFormularioMoniker" ElementName="tapizERHasEstiloFormulario" MonikerTypeName="TapizERHasEstiloFormularioMoniker">
        <DomainRelationshipMoniker Name="TapizERHasEstiloFormulario" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaFormulario" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaFormularioMoniker" ElementName="metaforaFormulario" MonikerTypeName="MetaforaFormularioMoniker">
        <GeometryShapeMoniker Name="MetaforaFormulario" />
      </XmlClassData>
      <XmlClassData TypeName="AtributoRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="atributoRelacionMoniker" ElementName="atributoRelacion" MonikerTypeName="AtributoRelacionMoniker">
        <DomainClassMoniker Name="AtributoRelacion" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="relacion">
            <DomainRelationshipMoniker Name="AtributoRelacionReferencesRelacion" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="admiteRepetidos">
            <DomainPropertyMoniker Name="AtributoRelacion/AdmiteRepetidos" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="admiteNoNulos">
            <DomainPropertyMoniker Name="AtributoRelacion/AdmiteNoNulos" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MetaforaAtributoRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaAtributoRelacionMoniker" ElementName="metaforaAtributoRelacion" MonikerTypeName="MetaforaAtributoRelacionMoniker">
        <GeometryShapeMoniker Name="MetaforaAtributoRelacion" />
      </XmlClassData>
      <XmlClassData TypeName="AtributoRelacionReferencesRelacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="atributoRelacionReferencesRelacionMoniker" ElementName="atributoRelacionReferencesRelacion" MonikerTypeName="AtributoRelacionReferencesRelacionMoniker">
        <DomainRelationshipMoniker Name="AtributoRelacionReferencesRelacion" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaRelacionRefAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaRelacionRefAtributoMoniker" ElementName="metaforaRelacionRefAtributo" MonikerTypeName="MetaforaRelacionRefAtributoMoniker">
        <ConnectorMoniker Name="MetaforaRelacionRefAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="EntidadReferencesEstiloPaginaWeb" MonikerAttributeName="" SerializeId="true" MonikerElementName="entidadReferencesEstiloPaginaWebMoniker" ElementName="entidadReferencesEstiloPaginaWeb" MonikerTypeName="EntidadReferencesEstiloPaginaWebMoniker">
        <DomainRelationshipMoniker Name="EntidadReferencesEstiloPaginaWeb" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaRelacionPaginaWebEntidad" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaRelacionPaginaWebEntidadMoniker" ElementName="metaforaRelacionPaginaWebEntidad" MonikerTypeName="MetaforaRelacionPaginaWebEntidadMoniker">
        <ConnectorMoniker Name="MetaforaRelacionPaginaWebEntidad" />
      </XmlClassData>
      <XmlClassData TypeName="AtributoReferencesEstiloFormulario" MonikerAttributeName="" SerializeId="true" MonikerElementName="atributoReferencesEstiloFormularioMoniker" ElementName="atributoReferencesEstiloFormulario" MonikerTypeName="AtributoReferencesEstiloFormularioMoniker">
        <DomainRelationshipMoniker Name="AtributoReferencesEstiloFormulario" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaRelacionFormularioAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaRelacionFormularioAtributoMoniker" ElementName="metaforaRelacionFormularioAtributo" MonikerTypeName="MetaforaRelacionFormularioAtributoMoniker">
        <ConnectorMoniker Name="MetaforaRelacionFormularioAtributo" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="DCJITRFPFProyectoIPSExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="EntidadRefAtributo">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="EntidadReferenciasAtributo" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Entidad" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Atributo" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="PrimeraRelacionRefEntidad">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="PrimeraRelacionReferenciasEntidad" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Relacion" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Entidad" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="SegundaRelacionRefEntidad">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="SegundaRelacionReferenciasEntidad" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Relacion" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Entidad" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="AtributoRelacionReferencesRelacionBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AtributoRelacionReferencesRelacion" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="AtributoRelacion" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Relacion" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="EntidadReferencesEstiloPaginaWebBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="EntidadReferencesEstiloPaginaWeb" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Entidad" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="EstiloPaginaWeb" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="AtributoReferencesEstiloFormularioBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AtributoReferencesEstiloFormulario" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Atributo" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="EstiloFormulario" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="be714e6a-34ba-4a2d-8e4a-dd52d40ff1e4" Description="Description for DNF.DCJITRFPFProyectoIPS.DCJITRFPFProyectoIPSDiagram" Name="DCJITRFPFProyectoIPSDiagram" DisplayName="Minimal Language Diagram" Namespace="DNF.DCJITRFPFProyectoIPS">
    <Class>
      <DomainClassMoniker Name="TapizER" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Entidad" />
        <ParentElementPath>
          <DomainPath>TapizERTieneEntidad.TapizER/!TapizER</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaEntidad/Texto" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Entidad/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaEntidad" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="AtributoNM" />
        <ParentElementPath>
          <DomainPath>TapizERTieneAtributo.TapizER/!TapizER</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAtributoNM/Texto" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Atributo/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaAtributoNM" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="ClavePrimaria" />
        <ParentElementPath>
          <DomainPath>TapizERTieneAtributo.TapizER/!TapizER</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaClavePrimaria/Texto" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Atributo/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaClavePrimaria" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Relacion" />
        <ParentElementPath>
          <DomainPath>TapizERTieneRelacion.TapizER/!TapizER</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaRelacion/Texto" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Relacion/nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaRelacion" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="EstiloPortalWeb" />
        <ParentElementPath>
          <DomainPath>TapizERTieneEstiloPortalWeb.TapizER/!TapizER</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaPortalWeb/Estilo" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloPortalWeb/Estilos" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaPortalWeb" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="EstiloPaginaWeb" />
        <ParentElementPath>
          <DomainPath>TapizERTieneEstiloPaginaWeb.TapizER/!TapizER</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaPaginaWeb/Estilo" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloPaginaWeb/Estilos" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaPaginaWeb" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="EstiloFormulario" />
        <ParentElementPath>
          <DomainPath>TapizERHasEstiloFormulario.TapizER/!TapizER</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaFormulario/Estilo" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloFormulario/Estilos" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaFormulario" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="AtributoRelacion" />
        <ParentElementPath>
          <DomainPath>TapizERTieneAtributo.TapizER/!TapizER</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAtributoRelacion/Texto" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Atributo/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaAtributoRelacion" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="MetaforaEntidadRefAtributo" />
        <DomainRelationshipMoniker Name="EntidadReferenciasAtributo" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MetaforaPrimeraRelacionEntidad" />
        <DomainRelationshipMoniker Name="PrimeraRelacionReferenciasEntidad" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaPrimeraRelacionEntidad/Card1" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="PrimeraRelacionReferenciasEntidad/Cardinalidad" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MetaforaSegundaRelacionEntidad" />
        <DomainRelationshipMoniker Name="SegundaRelacionReferenciasEntidad" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaSegundaRelacionEntidad/Cardi1" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="SegundaRelacionReferenciasEntidad/Cardinalidad" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MetaforaRelacionRefAtributo" />
        <DomainRelationshipMoniker Name="AtributoRelacionReferencesRelacion" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MetaforaRelacionPaginaWebEntidad" />
        <DomainRelationshipMoniker Name="EntidadReferencesEstiloPaginaWeb" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MetaforaRelacionFormularioAtributo" />
        <DomainRelationshipMoniker Name="AtributoReferencesEstiloFormulario" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="DCJITRFPF_DSLProyectoIPS" EditorGuid="62ada28a-7022-48ea-bc31-0d092625afd6">
    <RootClass>
      <DomainClassMoniker Name="TapizER" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="DCJITRFPFProyectoIPSSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="DCJITRFPFProyectoIPS1">
      <ElementTool Name="EntidadTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Entidad" Tooltip="Crea una Entidad" HelpKeyword="EntidadTool">
        <DomainClassMoniker Name="Entidad" />
      </ElementTool>
      <ElementTool Name="AtributoNMTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="AtributoNM" Tooltip="Crea un atributo normal y corriente" HelpKeyword="AtributoNMTool">
        <DomainClassMoniker Name="AtributoNM" />
      </ElementTool>
      <ConnectionTool Name="EntidadAtributoConex" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="EntidadXAtributo" Tooltip="Conecta una Entidad con un Atributo" HelpKeyword="EntidadAtributoConex" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorSourceSearch.cur">
        <ConnectionBuilderMoniker Name="DCJITRFPFProyectoIPS/EntidadRefAtributo" />
      </ConnectionTool>
      <ElementTool Name="ClavePrimariaTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="ClavePrimaria" Tooltip="Crea la clave primaria de una entidad" HelpKeyword="ClavePrimariaTool">
        <DomainClassMoniker Name="ClavePrimaria" />
      </ElementTool>
      <ElementTool Name="RelacionTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Relacion" Tooltip="Crea un objeto relacion para nombrar la relacion de dos entidades" HelpKeyword="RelacionTool">
        <DomainClassMoniker Name="Relacion" />
      </ElementTool>
      <ConnectionTool Name="PrimeraRelacionTool" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="PrimeraRelacion" Tooltip="Crea la primera relacion con el nombre de la relacion para unir entidaes" HelpKeyword="PrimeraRelacionTool" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorSourceSearch.cur">
        <ConnectionBuilderMoniker Name="DCJITRFPFProyectoIPS/PrimeraRelacionRefEntidad" />
      </ConnectionTool>
      <ConnectionTool Name="SegundaRelacionTool" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="SegundaRelacion" Tooltip="Crea la segunda relacion para la union de entidades" HelpKeyword="SegundaRelacionTool" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorSourceSearch.cur">
        <ConnectionBuilderMoniker Name="DCJITRFPFProyectoIPS/SegundaRelacionRefEntidad" />
      </ConnectionTool>
      <ElementTool Name="PortalWebTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="PortalWeb" Tooltip="Crea un cuadro de Estilo Grafico Portal Web" HelpKeyword="PortalWebTool">
        <DomainClassMoniker Name="EstiloPortalWeb" />
      </ElementTool>
      <ElementTool Name="PaginaWebTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="PaginaWeb" Tooltip="Crea un cuadro de estilo de pagina web" HelpKeyword="PaginaWebTool">
        <DomainClassMoniker Name="EstiloPaginaWeb" />
      </ElementTool>
      <ElementTool Name="FormularioTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Formulario" Tooltip="Crea un cuadro de estilo formulario" HelpKeyword="FormularioTool">
        <DomainClassMoniker Name="EstiloFormulario" />
      </ElementTool>
      <ConnectionTool Name="RelacionAtributoConex" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="RelacionAtributo" Tooltip="Relaciona un atributo de relacion con su relacion" HelpKeyword="RelacionAtributoConex" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="DCJITRFPFProyectoIPS/AtributoRelacionReferencesRelacionBuilder" />
      </ConnectionTool>
      <ElementTool Name="AtributoRelacion" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="AtributoRelacion" Tooltip="Añade un atributo a una relacion" HelpKeyword="AtributoRelacion">
        <DomainClassMoniker Name="AtributoRelacion" />
      </ElementTool>
      <ConnectionTool Name="PagWebRefEntidad" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="PagWebRefEntidad" Tooltip="Crea una relacion entre el cuadro de estilo pag web y la entidad a la que referencia" HelpKeyword="PagWebRefEntidad" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorSourceSearch.cur">
        <ConnectionBuilderMoniker Name="DCJITRFPFProyectoIPS/EntidadReferencesEstiloPaginaWebBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="AtributoRefFormulario" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="AtributoRefFormulario" Tooltip="Une un cuadro de estilo formulario con un atributo" HelpKeyword="AtributoRefFormulario" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorSourceSearch.cur">
        <ConnectionBuilderMoniker Name="DCJITRFPFProyectoIPS/AtributoReferencesEstiloFormularioBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="DCJITRFPFProyectoIPSDiagram" />
  </Designer>
  <Explorer ExplorerGuid="0a7cd275-81ee-47cb-89d3-470b3d111922" Title="DCJITRFPFProyectoIPS Explorer">
    <ExplorerBehaviorMoniker Name="DCJITRFPFProyectoIPS/DCJITRFPFProyectoIPSExplorer" />
  </Explorer>
</Dsl>