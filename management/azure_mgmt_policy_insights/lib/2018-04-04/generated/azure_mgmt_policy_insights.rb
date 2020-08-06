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
require '2018-04-04/generated/azure_mgmt_policy_insights/module_definition'
require 'ms_rest_azure'

module Azure::PolicyInsights::Mgmt::V2018_04_04
  autoload :PolicyEvents,                                       '2018-04-04/generated/azure_mgmt_policy_insights/policy_events.rb'
  autoload :PolicyStates,                                       '2018-04-04/generated/azure_mgmt_policy_insights/policy_states.rb'
  autoload :Operations,                                         '2018-04-04/generated/azure_mgmt_policy_insights/operations.rb'
  autoload :PolicyInsightsClient,                               '2018-04-04/generated/azure_mgmt_policy_insights/policy_insights_client.rb'

  module Models
    autoload :PolicyDefinitionSummary,                            '2018-04-04/generated/azure_mgmt_policy_insights/models/policy_definition_summary.rb'
    autoload :PolicyAssignmentSummary,                            '2018-04-04/generated/azure_mgmt_policy_insights/models/policy_assignment_summary.rb'
    autoload :PolicyEventsQueryResults,                           '2018-04-04/generated/azure_mgmt_policy_insights/models/policy_events_query_results.rb'
    autoload :Summary,                                            '2018-04-04/generated/azure_mgmt_policy_insights/models/summary.rb'
    autoload :QueryFailure,                                       '2018-04-04/generated/azure_mgmt_policy_insights/models/query_failure.rb'
    autoload :SummarizeResults,                                   '2018-04-04/generated/azure_mgmt_policy_insights/models/summarize_results.rb'
    autoload :PolicyStatesQueryResults,                           '2018-04-04/generated/azure_mgmt_policy_insights/models/policy_states_query_results.rb'
    autoload :OperationDisplay,                                   '2018-04-04/generated/azure_mgmt_policy_insights/models/operation_display.rb'
    autoload :PolicyEvent,                                        '2018-04-04/generated/azure_mgmt_policy_insights/models/policy_event.rb'
    autoload :Operation,                                          '2018-04-04/generated/azure_mgmt_policy_insights/models/operation.rb'
    autoload :PolicyState,                                        '2018-04-04/generated/azure_mgmt_policy_insights/models/policy_state.rb'
    autoload :OperationsListResults,                              '2018-04-04/generated/azure_mgmt_policy_insights/models/operations_list_results.rb'
    autoload :QueryFailureError,                                  '2018-04-04/generated/azure_mgmt_policy_insights/models/query_failure_error.rb'
    autoload :QueryOptions,                                       '2018-04-04/generated/azure_mgmt_policy_insights/models/query_options.rb'
    autoload :SummaryResults,                                     '2018-04-04/generated/azure_mgmt_policy_insights/models/summary_results.rb'
    autoload :PolicyStatesResource,                               '2018-04-04/generated/azure_mgmt_policy_insights/models/policy_states_resource.rb'
  end
end
