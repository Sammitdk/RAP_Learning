@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Table'
@Metadata.ignorePropagatedAnnotations: true
define view entity Zi_Customer_Sam
  as select from /dmo/customer
{
      @UI.identification: [{  position : 10 }]
  key customer_id   as CustomerId,
      @UI.identification: [{  position : 20 }]
      first_name    as FirstName,
      @UI.identification: [{  position : 30 }]
      last_name     as LastName,
      @UI.identification: [{  position : 40 }]
      street        as Street,
      @UI.identification: [{  position : 50 }]
      postal_code   as PostalCode,
      @UI.identification: [{  position : 60 }]
      city          as City,
      @UI.identification: [{  position : 70 }]
      phone_number  as PhoneNumber,
      @UI.identification: [{  position : 80 }]
      email_address as EmailAddress
}
