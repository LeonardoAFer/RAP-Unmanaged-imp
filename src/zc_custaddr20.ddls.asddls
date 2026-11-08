@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection of Customer Address'
@Metadata.allowExtensions: true
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
      @Semantics.user.createdBy: true
      Createdbyuser,
      @Semantics.systemDateTime.createdAt: true
      Creationat,
      @Semantics.user.lastChangedBy: true
      Lastchangedbyuser,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      Locallastchangedat,
      /* Associations */
      _Customer: redirected to parent ZC_CUSTOMER20
}
