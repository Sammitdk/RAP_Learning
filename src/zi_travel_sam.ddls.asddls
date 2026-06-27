@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel View'
@Metadata.ignorePropagatedAnnotations: true

@UI.headerInfo: {
    typeName: 'Travel',
    typeNamePlural: 'Travel'
}

@Search: {
    searchable: true
}

define root view entity ZI_TRAVEL_SAM
  as select from /dmo/travel
  association [1] to Zi_Customer_Sam as _customer on $projection.CustomerId = _customer.CustomerId
  association [1] to ZI_AGENCY_SAM   as _agency   on $projection.AgencyId = _agency.AgencyId
{

      @UI.facet: [{
          id : 'Customer',
          purpose: #STANDARD,
          type: #IDENTIFICATION_REFERENCE,
          position : 10,
          label : 'Customer Information',
          targetElement: '_customer'
      },{
          id : 'Agency',
          purpose: #STANDARD,
          type: #IDENTIFICATION_REFERENCE,
          position : 20,
          label : 'Agency Information',
          targetElement: '_agency'
      }]

      @UI.lineItem: [{ position : 10, label : 'Travel ID ' }]
      @Search: { defaultSearchElement: true }
  key travel_id     as TravelId,
      @UI.lineItem: [{ position : 20, label : 'Agency ' }]
      @ObjectModel.text.association: '_agency'
      @UI.textArrangement: #TEXT_ONLY
      agency_id     as AgencyId,
      @UI.lineItem: [{ position : 30 }]
      @Search: { defaultSearchElement: true }
      customer_id   as CustomerId,
      @UI.lineItem: [{ position : 40 }]
      begin_date    as BeginDate,
      @UI.lineItem: [{ position : 50 }]
      end_date      as EndDate,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      @UI.lineItem: [{ position : 60 }]
      booking_fee   as BookingFee,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      @UI.lineItem: [{ position : 70 }]
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      @UI.lineItem: [{ position : 80 }]
      description   as Description,
      @UI.lineItem: [{ position : 90 }]
      status        as Status,

      _customer,
      _agency
}
