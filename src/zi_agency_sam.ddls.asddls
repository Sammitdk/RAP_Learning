@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agency View'
@Metadata.ignorePropagatedAnnotations: true
@Search: {
    searchable: true
}
define view entity ZI_AGENCY_SAM
  as select from /dmo/agency
{
      @UI.identification: [{  position : 10 }]
  key agency_id     as AgencyId,
      @Semantics.text : true
      @Search: {
      defaultSearchElement: true,
      fuzzinessThreshold: 0.8
      }
      @UI.identification: [{  position : 20 }]
      name          as Name,
      @UI.identification: [{  position : 30 }]
      street        as Street,
      @UI.identification: [{  position : 40 }]
      postal_code   as PostalCode,
      @UI.identification: [{  position : 50 }]
      city          as City,
      @UI.identification: [{  position : 60 }]
      country_code  as CountryCode,
      @UI.identification: [{  position : 70 }]
      phone_number  as PhoneNumber,
      @UI.identification: [{  position : 80 }]
      email_address as EmailAddress
}
