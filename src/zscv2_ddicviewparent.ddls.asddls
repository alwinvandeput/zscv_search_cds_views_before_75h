@EndUserText.label: 'DDic View Parent'
@AbapCatalog.sqlViewName: 'ZSCV2_DDVW_PARNT'

@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED

define view ZSCV2_DdicViewParent
  as select from ZSCV2_DdicViewChildDdicView as DdicView
  association [1..*] to ZSCV2_DdicViewParent as _Parent on $projection.ChildViewName = _Parent.ParentViewName
{
  key DdicView.ParentViewName,
  key DdicView.ChildViewName,

      _Parent
}
