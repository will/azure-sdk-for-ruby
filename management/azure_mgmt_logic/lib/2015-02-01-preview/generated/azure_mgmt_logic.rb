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
require '2015-02-01-preview/generated/azure_mgmt_logic/module_definition'
require 'ms_rest_azure'

module Azure::Logic::Mgmt::V2015_02_01_preview
  autoload :Workflows,                                          '2015-02-01-preview/generated/azure_mgmt_logic/workflows.rb'
  autoload :WorkflowVersions,                                   '2015-02-01-preview/generated/azure_mgmt_logic/workflow_versions.rb'
  autoload :WorkflowAccessKeys,                                 '2015-02-01-preview/generated/azure_mgmt_logic/workflow_access_keys.rb'
  autoload :WorkflowTriggers,                                   '2015-02-01-preview/generated/azure_mgmt_logic/workflow_triggers.rb'
  autoload :WorkflowTriggerHistories,                           '2015-02-01-preview/generated/azure_mgmt_logic/workflow_trigger_histories.rb'
  autoload :WorkflowRuns,                                       '2015-02-01-preview/generated/azure_mgmt_logic/workflow_runs.rb'
  autoload :WorkflowRunActions,                                 '2015-02-01-preview/generated/azure_mgmt_logic/workflow_run_actions.rb'
  autoload :LogicManagementClient,                              '2015-02-01-preview/generated/azure_mgmt_logic/logic_management_client.rb'

  module Models
    autoload :WorkflowTriggerFilter,                              '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_trigger_filter.rb'
    autoload :WorkflowTriggerListResult,                          '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_trigger_list_result.rb'
    autoload :SubResource,                                        '2015-02-01-preview/generated/azure_mgmt_logic/models/sub_resource.rb'
    autoload :Resource,                                           '2015-02-01-preview/generated/azure_mgmt_logic/models/resource.rb'
    autoload :Sku,                                                '2015-02-01-preview/generated/azure_mgmt_logic/models/sku.rb'
    autoload :ResourceReference,                                  '2015-02-01-preview/generated/azure_mgmt_logic/models/resource_reference.rb'
    autoload :ContentLink,                                        '2015-02-01-preview/generated/azure_mgmt_logic/models/content_link.rb'
    autoload :ContentHash,                                        '2015-02-01-preview/generated/azure_mgmt_logic/models/content_hash.rb'
    autoload :WorkflowParameter,                                  '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_parameter.rb'
    autoload :WorkflowListResult,                                 '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_list_result.rb'
    autoload :WorkflowRunListResult,                              '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_run_list_result.rb'
    autoload :WorkflowRunActionFilter,                            '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_run_action_filter.rb'
    autoload :WorkflowTriggerHistoryListResult,                   '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_trigger_history_list_result.rb'
    autoload :WorkflowTriggerRecurrence,                          '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_trigger_recurrence.rb'
    autoload :WorkflowTriggerHistoryFilter,                       '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_trigger_history_filter.rb'
    autoload :WorkflowFilter,                                     '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_filter.rb'
    autoload :WorkflowRunTrigger,                                 '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_run_trigger.rb'
    autoload :WorkflowAccessKeyListResult,                        '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_access_key_list_result.rb'
    autoload :WorkflowSecretKeys,                                 '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_secret_keys.rb'
    autoload :WorkflowRunActionListResult,                        '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_run_action_list_result.rb'
    autoload :RunWorkflowParameters,                              '2015-02-01-preview/generated/azure_mgmt_logic/models/run_workflow_parameters.rb'
    autoload :RegenerateSecretKeyParameters,                      '2015-02-01-preview/generated/azure_mgmt_logic/models/regenerate_secret_key_parameters.rb'
    autoload :WorkflowRunFilter,                                  '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_run_filter.rb'
    autoload :Workflow,                                           '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow.rb'
    autoload :WorkflowVersion,                                    '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_version.rb'
    autoload :WorkflowAccessKey,                                  '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_access_key.rb'
    autoload :WorkflowTrigger,                                    '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_trigger.rb'
    autoload :WorkflowTriggerHistory,                             '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_trigger_history.rb'
    autoload :WorkflowOutputParameter,                            '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_output_parameter.rb'
    autoload :WorkflowRun,                                        '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_run.rb'
    autoload :WorkflowRunAction,                                  '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_run_action.rb'
    autoload :WorkflowProvisioningState,                          '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_provisioning_state.rb'
    autoload :WorkflowState,                                      '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_state.rb'
    autoload :SkuName,                                            '2015-02-01-preview/generated/azure_mgmt_logic/models/sku_name.rb'
    autoload :ParameterType,                                      '2015-02-01-preview/generated/azure_mgmt_logic/models/parameter_type.rb'
    autoload :WorkflowTriggerProvisioningState,                   '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_trigger_provisioning_state.rb'
    autoload :WorkflowStatus,                                     '2015-02-01-preview/generated/azure_mgmt_logic/models/workflow_status.rb'
    autoload :RecurrenceFrequency,                                '2015-02-01-preview/generated/azure_mgmt_logic/models/recurrence_frequency.rb'
    autoload :KeyType,                                            '2015-02-01-preview/generated/azure_mgmt_logic/models/key_type.rb'
  end
end
