# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2019-05-01/generated/azure_mgmt_consumption/module_definition'
require 'ms_rest_azure'

module Azure::Consumption::Mgmt::V2019_05_01
  autoload :UsageDetails,                                       '2019-05-01/generated/azure_mgmt_consumption/usage_details.rb'
  autoload :Marketplaces,                                       '2019-05-01/generated/azure_mgmt_consumption/marketplaces.rb'
  autoload :Budgets,                                            '2019-05-01/generated/azure_mgmt_consumption/budgets.rb'
  autoload :Tags,                                               '2019-05-01/generated/azure_mgmt_consumption/tags.rb'
  autoload :Charges,                                            '2019-05-01/generated/azure_mgmt_consumption/charges.rb'
  autoload :Balances,                                           '2019-05-01/generated/azure_mgmt_consumption/balances.rb'
  autoload :ReservationsSummaries,                              '2019-05-01/generated/azure_mgmt_consumption/reservations_summaries.rb'
  autoload :ReservationsDetails,                                '2019-05-01/generated/azure_mgmt_consumption/reservations_details.rb'
  autoload :ReservationRecommendations,                         '2019-05-01/generated/azure_mgmt_consumption/reservation_recommendations.rb'
  autoload :PriceSheet,                                         '2019-05-01/generated/azure_mgmt_consumption/price_sheet.rb'
  autoload :Forecasts,                                          '2019-05-01/generated/azure_mgmt_consumption/forecasts.rb'
  autoload :Operations,                                         '2019-05-01/generated/azure_mgmt_consumption/operations.rb'
  autoload :AggregatedCost,                                     '2019-05-01/generated/azure_mgmt_consumption/aggregated_cost.rb'
  autoload :ConsumptionManagementClient,                        '2019-05-01/generated/azure_mgmt_consumption/consumption_management_client.rb'

  module Models
    autoload :CurrentSpend,                                       '2019-05-01/generated/azure_mgmt_consumption/models/current_spend.rb'
    autoload :Notification,                                       '2019-05-01/generated/azure_mgmt_consumption/models/notification.rb'
    autoload :MeterDetailsResponse,                               '2019-05-01/generated/azure_mgmt_consumption/models/meter_details_response.rb'
    autoload :Filters,                                            '2019-05-01/generated/azure_mgmt_consumption/models/filters.rb'
    autoload :MeterDetails,                                       '2019-05-01/generated/azure_mgmt_consumption/models/meter_details.rb'
    autoload :BudgetTimePeriod,                                   '2019-05-01/generated/azure_mgmt_consumption/models/budget_time_period.rb'
    autoload :MarketplacesListResult,                             '2019-05-01/generated/azure_mgmt_consumption/models/marketplaces_list_result.rb'
    autoload :UsageDetailsListResult,                             '2019-05-01/generated/azure_mgmt_consumption/models/usage_details_list_result.rb'
    autoload :BalancePropertiesAdjustmentDetailsItem,             '2019-05-01/generated/azure_mgmt_consumption/models/balance_properties_adjustment_details_item.rb'
    autoload :ChargesListResult,                                  '2019-05-01/generated/azure_mgmt_consumption/models/charges_list_result.rb'
    autoload :OperationDisplay,                                   '2019-05-01/generated/azure_mgmt_consumption/models/operation_display.rb'
    autoload :ReservationSummariesListResult,                     '2019-05-01/generated/azure_mgmt_consumption/models/reservation_summaries_list_result.rb'
    autoload :OperationListResult,                                '2019-05-01/generated/azure_mgmt_consumption/models/operation_list_result.rb'
    autoload :ReservationDetailsListResult,                       '2019-05-01/generated/azure_mgmt_consumption/models/reservation_details_list_result.rb'
    autoload :ReservationRecommendationsListResult,               '2019-05-01/generated/azure_mgmt_consumption/models/reservation_recommendations_list_result.rb'
    autoload :BudgetsListResult,                                  '2019-05-01/generated/azure_mgmt_consumption/models/budgets_list_result.rb'
    autoload :ErrorDetails,                                       '2019-05-01/generated/azure_mgmt_consumption/models/error_details.rb'
    autoload :PriceSheetProperties,                               '2019-05-01/generated/azure_mgmt_consumption/models/price_sheet_properties.rb'
    autoload :Operation,                                          '2019-05-01/generated/azure_mgmt_consumption/models/operation.rb'
    autoload :ProxyResource,                                      '2019-05-01/generated/azure_mgmt_consumption/models/proxy_resource.rb'
    autoload :ReservationRecommendation,                          '2019-05-01/generated/azure_mgmt_consumption/models/reservation_recommendation.rb'
    autoload :ForecastPropertiesConfidenceLevelsItem,             '2019-05-01/generated/azure_mgmt_consumption/models/forecast_properties_confidence_levels_item.rb'
    autoload :BalancePropertiesNewPurchasesDetailsItem,           '2019-05-01/generated/azure_mgmt_consumption/models/balance_properties_new_purchases_details_item.rb'
    autoload :ResourceAttributes,                                 '2019-05-01/generated/azure_mgmt_consumption/models/resource_attributes.rb'
    autoload :Tag,                                                '2019-05-01/generated/azure_mgmt_consumption/models/tag.rb'
    autoload :ForecastsListResult,                                '2019-05-01/generated/azure_mgmt_consumption/models/forecasts_list_result.rb'
    autoload :ErrorResponse,                                      '2019-05-01/generated/azure_mgmt_consumption/models/error_response.rb'
    autoload :Resource,                                           '2019-05-01/generated/azure_mgmt_consumption/models/resource.rb'
    autoload :UsageDetail,                                        '2019-05-01/generated/azure_mgmt_consumption/models/usage_detail.rb'
    autoload :Marketplace,                                        '2019-05-01/generated/azure_mgmt_consumption/models/marketplace.rb'
    autoload :Balance,                                            '2019-05-01/generated/azure_mgmt_consumption/models/balance.rb'
    autoload :ReservationSummary,                                 '2019-05-01/generated/azure_mgmt_consumption/models/reservation_summary.rb'
    autoload :ReservationDetail,                                  '2019-05-01/generated/azure_mgmt_consumption/models/reservation_detail.rb'
    autoload :TagsResult,                                         '2019-05-01/generated/azure_mgmt_consumption/models/tags_result.rb'
    autoload :Budget,                                             '2019-05-01/generated/azure_mgmt_consumption/models/budget.rb'
    autoload :PriceSheetResult,                                   '2019-05-01/generated/azure_mgmt_consumption/models/price_sheet_result.rb'
    autoload :Forecast,                                           '2019-05-01/generated/azure_mgmt_consumption/models/forecast.rb'
    autoload :ManagementGroupAggregatedCostResult,                '2019-05-01/generated/azure_mgmt_consumption/models/management_group_aggregated_cost_result.rb'
    autoload :ChargeSummary,                                      '2019-05-01/generated/azure_mgmt_consumption/models/charge_summary.rb'
    autoload :BillingFrequency,                                   '2019-05-01/generated/azure_mgmt_consumption/models/billing_frequency.rb'
    autoload :CategoryType,                                       '2019-05-01/generated/azure_mgmt_consumption/models/category_type.rb'
    autoload :TimeGrainType,                                      '2019-05-01/generated/azure_mgmt_consumption/models/time_grain_type.rb'
    autoload :OperatorType,                                       '2019-05-01/generated/azure_mgmt_consumption/models/operator_type.rb'
    autoload :Grain,                                              '2019-05-01/generated/azure_mgmt_consumption/models/grain.rb'
    autoload :ChargeType,                                         '2019-05-01/generated/azure_mgmt_consumption/models/charge_type.rb'
    autoload :Bound,                                              '2019-05-01/generated/azure_mgmt_consumption/models/bound.rb'
    autoload :Datagrain,                                          '2019-05-01/generated/azure_mgmt_consumption/models/datagrain.rb'
    autoload :Metrictype,                                         '2019-05-01/generated/azure_mgmt_consumption/models/metrictype.rb'
  end
end
