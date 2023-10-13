@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABAP View by View Group By'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity ZSCV2_AbapViewByViewGroupBy
  with parameters
    p_AbapViewName                 :vibastab,
    p_DdicCdsBasedOnDllResourceInd :abap_boolean

  as select from ZSCV2_AbapViewHier(
                 p_AbapViewName                  : $parameters.p_AbapViewName,
                 p_DdicCdsBasedOnDllResourceInd  : $parameters.p_DdicCdsBasedOnDllResourceInd) as AbapViewHier
{
  key AbapViewName  as AbapViewName //,
//      AbapViewType  as AbapViewType,
//      DdlSourceName as DdlSourceName,
//      DdicViewName  as DdicViewName
}
group by
  AbapViewName //,
//  AbapViewType,
//  DdlSourceName,
//  DdicViewName
