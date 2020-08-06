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
require '2015-11-01-preview/generated/azure_mgmt_operational_insights/module_definition'
require 'ms_rest_azure'

module Azure::OperationalInsights::Mgmt::V2015_11_01_preview
  autoload :LinkedServices,                                     '2015-11-01-preview/generated/azure_mgmt_operational_insights/linked_services.rb'
  autoload :DataSources,                                        '2015-11-01-preview/generated/azure_mgmt_operational_insights/data_sources.rb'
  autoload :Workspaces,                                         '2015-11-01-preview/generated/azure_mgmt_operational_insights/workspaces.rb'
  autoload :Operations,                                         '2015-11-01-preview/generated/azure_mgmt_operational_insights/operations.rb'
  autoload :OperationalInsightsManagementClient,                '2015-11-01-preview/generated/azure_mgmt_operational_insights/operational_insights_management_client.rb'

  module Models
    autoload :MetricName,                                         '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/metric_name.rb'
    autoload :SharedKeys,                                         '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/shared_keys.rb'
    autoload :LinkedServiceListResult,                            '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/linked_service_list_result.rb'
    autoload :OperationStatus,                                    '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/operation_status.rb'
    autoload :OperationDisplay,                                   '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/operation_display.rb'
    autoload :UsageMetric,                                        '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/usage_metric.rb'
    autoload :OperationListResult,                                '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/operation_list_result.rb'
    autoload :WorkspaceListUsagesResult,                          '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/workspace_list_usages_result.rb'
    autoload :DataSourceFilter,                                   '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/data_source_filter.rb'
    autoload :ManagementGroup,                                    '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/management_group.rb'
    autoload :IntelligencePack,                                   '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/intelligence_pack.rb'
    autoload :WorkspaceListManagementGroupsResult,                '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/workspace_list_management_groups_result.rb'
    autoload :Operation,                                          '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/operation.rb'
    autoload :Sku,                                                '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/sku.rb'
    autoload :DataSourceListResult,                               '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/data_source_list_result.rb'
    autoload :ErrorResponse,                                      '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/error_response.rb'
    autoload :WorkspaceListResult,                                '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/workspace_list_result.rb'
    autoload :ProxyResource,                                      '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/proxy_resource.rb'
    autoload :Resource,                                           '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/resource.rb'
    autoload :LinkedService,                                      '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/linked_service.rb'
    autoload :DataSource,                                         '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/data_source.rb'
    autoload :Workspace,                                          '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/workspace.rb'
    autoload :DataSourceKind,                                     '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/data_source_kind.rb'
    autoload :SkuNameEnum,                                        '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/sku_name_enum.rb'
    autoload :EntityStatus,                                       '2015-11-01-preview/generated/azure_mgmt_operational_insights/models/entity_status.rb'
  end
end
