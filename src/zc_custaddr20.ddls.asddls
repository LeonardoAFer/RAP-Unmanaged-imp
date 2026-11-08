@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection of Customer Address'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_CUSTADDR20
  as projection on ZI_CUSTADDR20
{
  key Customerno,
  key Addressid,
      City,
      District,
      Postalcode,
      Country,
      Street,
      Createdbyuser,
      Creationat,
      Lastchangedbyuser,
      Locallastchangedat,
      /* Associations */
      _Customer: redirected to parent ZC_CUSTOMER20
}
