@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection of Customer'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_CUSTOMER20
  as projection on ZI_CUSTOMER20 as Customer
{
  key Customerno,
      Firstname,
      Lastname,
      Phone,
      Createdbyuser,
      Creationat,
      Lastchangedbyuser,
      Lastchangedat,
      Locallastchangedat,
      /* Associations */
      _CustAddr: redirected to composition child ZC_CUSTADDR20
}
