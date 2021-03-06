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
require '2018-10-01/generated/azure_mgmt_signalr/module_definition'
require 'ms_rest_azure'

module Azure::Signalr::Mgmt::V2018_10_01
  autoload :Operations,                                         '2018-10-01/generated/azure_mgmt_signalr/operations.rb'
  autoload :SignalR,                                            '2018-10-01/generated/azure_mgmt_signalr/signal_r.rb'
  autoload :Usages,                                             '2018-10-01/generated/azure_mgmt_signalr/usages.rb'
  autoload :SignalRManagementClient,                            '2018-10-01/generated/azure_mgmt_signalr/signal_rmanagement_client.rb'

  module Models
    autoload :ResourceSku,                                        '2018-10-01/generated/azure_mgmt_signalr/models/resource_sku.rb'
    autoload :Dimension,                                          '2018-10-01/generated/azure_mgmt_signalr/models/dimension.rb'
    autoload :SignalRResourceList,                                '2018-10-01/generated/azure_mgmt_signalr/models/signal_rresource_list.rb'
    autoload :LogSpecification,                                   '2018-10-01/generated/azure_mgmt_signalr/models/log_specification.rb'
    autoload :ServiceSpecification,                               '2018-10-01/generated/azure_mgmt_signalr/models/service_specification.rb'
    autoload :SignalRUsage,                                       '2018-10-01/generated/azure_mgmt_signalr/models/signal_rusage.rb'
    autoload :Operation,                                          '2018-10-01/generated/azure_mgmt_signalr/models/operation.rb'
    autoload :Resource,                                           '2018-10-01/generated/azure_mgmt_signalr/models/resource.rb'
    autoload :ErrorResponseBody,                                  '2018-10-01/generated/azure_mgmt_signalr/models/error_response_body.rb'
    autoload :SignalRFeature,                                     '2018-10-01/generated/azure_mgmt_signalr/models/signal_rfeature.rb'
    autoload :NameAvailabilityParameters,                         '2018-10-01/generated/azure_mgmt_signalr/models/name_availability_parameters.rb'
    autoload :SignalRCorsSettings,                                '2018-10-01/generated/azure_mgmt_signalr/models/signal_rcors_settings.rb'
    autoload :OperationDisplay,                                   '2018-10-01/generated/azure_mgmt_signalr/models/operation_display.rb'
    autoload :SignalRCreateOrUpdateProperties,                    '2018-10-01/generated/azure_mgmt_signalr/models/signal_rcreate_or_update_properties.rb'
    autoload :OperationProperties,                                '2018-10-01/generated/azure_mgmt_signalr/models/operation_properties.rb'
    autoload :SignalRKeys,                                        '2018-10-01/generated/azure_mgmt_signalr/models/signal_rkeys.rb'
    autoload :ErrorResponse,                                      '2018-10-01/generated/azure_mgmt_signalr/models/error_response.rb'
    autoload :RegenerateKeyParameters,                            '2018-10-01/generated/azure_mgmt_signalr/models/regenerate_key_parameters.rb'
    autoload :MetricSpecification,                                '2018-10-01/generated/azure_mgmt_signalr/models/metric_specification.rb'
    autoload :SignalRUsageList,                                   '2018-10-01/generated/azure_mgmt_signalr/models/signal_rusage_list.rb'
    autoload :NameAvailability,                                   '2018-10-01/generated/azure_mgmt_signalr/models/name_availability.rb'
    autoload :SignalRUpdateParameters,                            '2018-10-01/generated/azure_mgmt_signalr/models/signal_rupdate_parameters.rb'
    autoload :OperationList,                                      '2018-10-01/generated/azure_mgmt_signalr/models/operation_list.rb'
    autoload :SignalRUsageName,                                   '2018-10-01/generated/azure_mgmt_signalr/models/signal_rusage_name.rb'
    autoload :TrackedResource,                                    '2018-10-01/generated/azure_mgmt_signalr/models/tracked_resource.rb'
    autoload :SignalRResource,                                    '2018-10-01/generated/azure_mgmt_signalr/models/signal_rresource.rb'
    autoload :SignalRCreateParameters,                            '2018-10-01/generated/azure_mgmt_signalr/models/signal_rcreate_parameters.rb'
    autoload :SignalRSkuTier,                                     '2018-10-01/generated/azure_mgmt_signalr/models/signal_rsku_tier.rb'
    autoload :ProvisioningState,                                  '2018-10-01/generated/azure_mgmt_signalr/models/provisioning_state.rb'
    autoload :FeatureFlags,                                       '2018-10-01/generated/azure_mgmt_signalr/models/feature_flags.rb'
    autoload :KeyType,                                            '2018-10-01/generated/azure_mgmt_signalr/models/key_type.rb'
  end
end
