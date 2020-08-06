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
require '2020-04-15/generated/azure_mgmt_cdn/module_definition'
require 'ms_rest_azure'

module Azure::CDN::Mgmt::V2020_04_15
  autoload :Profiles,                                           '2020-04-15/generated/azure_mgmt_cdn/profiles.rb'
  autoload :Endpoints,                                          '2020-04-15/generated/azure_mgmt_cdn/endpoints.rb'
  autoload :Origins,                                            '2020-04-15/generated/azure_mgmt_cdn/origins.rb'
  autoload :OriginGroups,                                       '2020-04-15/generated/azure_mgmt_cdn/origin_groups.rb'
  autoload :CustomDomains,                                      '2020-04-15/generated/azure_mgmt_cdn/custom_domains.rb'
  autoload :ResourceUsageOperations,                            '2020-04-15/generated/azure_mgmt_cdn/resource_usage_operations.rb'
  autoload :Operations,                                         '2020-04-15/generated/azure_mgmt_cdn/operations.rb'
  autoload :EdgeNodes,                                          '2020-04-15/generated/azure_mgmt_cdn/edge_nodes.rb'
  autoload :Policies,                                           '2020-04-15/generated/azure_mgmt_cdn/policies.rb'
  autoload :ManagedRuleSets,                                    '2020-04-15/generated/azure_mgmt_cdn/managed_rule_sets.rb'
  autoload :CdnManagementClient,                                '2020-04-15/generated/azure_mgmt_cdn/cdn_management_client.rb'

  module Models
    autoload :UrlRedirectActionParameters,                        '2020-04-15/generated/azure_mgmt_cdn/models/url_redirect_action_parameters.rb'
    autoload :Sku,                                                '2020-04-15/generated/azure_mgmt_cdn/models/sku.rb'
    autoload :UrlFileNameMatchConditionParameters,                '2020-04-15/generated/azure_mgmt_cdn/models/url_file_name_match_condition_parameters.rb'
    autoload :ProfileListResult,                                  '2020-04-15/generated/azure_mgmt_cdn/models/profile_list_result.rb'
    autoload :Operation,                                          '2020-04-15/generated/azure_mgmt_cdn/models/operation.rb'
    autoload :SsoUri,                                             '2020-04-15/generated/azure_mgmt_cdn/models/sso_uri.rb'
    autoload :HttpVersionMatchConditionParameters,                '2020-04-15/generated/azure_mgmt_cdn/models/http_version_match_condition_parameters.rb'
    autoload :DeepCreatedOrigin,                                  '2020-04-15/generated/azure_mgmt_cdn/models/deep_created_origin.rb'
    autoload :OperationDisplay,                                   '2020-04-15/generated/azure_mgmt_cdn/models/operation_display.rb'
    autoload :ResourceReference,                                  '2020-04-15/generated/azure_mgmt_cdn/models/resource_reference.rb'
    autoload :CookiesMatchConditionParameters,                    '2020-04-15/generated/azure_mgmt_cdn/models/cookies_match_condition_parameters.rb'
    autoload :ResponseBasedOriginErrorDetectionParameters,        '2020-04-15/generated/azure_mgmt_cdn/models/response_based_origin_error_detection_parameters.rb'
    autoload :ResourceUsageListResult,                            '2020-04-15/generated/azure_mgmt_cdn/models/resource_usage_list_result.rb'
    autoload :CustomRule,                                         '2020-04-15/generated/azure_mgmt_cdn/models/custom_rule.rb'
    autoload :IsDeviceMatchConditionParameters,                   '2020-04-15/generated/azure_mgmt_cdn/models/is_device_match_condition_parameters.rb'
    autoload :GeoFilter,                                          '2020-04-15/generated/azure_mgmt_cdn/models/geo_filter.rb'
    autoload :ResourceUsage,                                      '2020-04-15/generated/azure_mgmt_cdn/models/resource_usage.rb'
    autoload :UrlSigningKey,                                      '2020-04-15/generated/azure_mgmt_cdn/models/url_signing_key.rb'
    autoload :ValidateProbeOutput,                                '2020-04-15/generated/azure_mgmt_cdn/models/validate_probe_output.rb'
    autoload :DeliveryRuleAction,                                 '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_action.rb'
    autoload :MatchCondition,                                     '2020-04-15/generated/azure_mgmt_cdn/models/match_condition.rb'
    autoload :EndpointPropertiesUpdateParametersDeliveryPolicy,   '2020-04-15/generated/azure_mgmt_cdn/models/endpoint_properties_update_parameters_delivery_policy.rb'
    autoload :UrlSigningParamIdentifier,                          '2020-04-15/generated/azure_mgmt_cdn/models/url_signing_param_identifier.rb'
    autoload :EndpointUpdateParameters,                           '2020-04-15/generated/azure_mgmt_cdn/models/endpoint_update_parameters.rb'
    autoload :UrlSigningActionParameters,                         '2020-04-15/generated/azure_mgmt_cdn/models/url_signing_action_parameters.rb'
    autoload :PolicySettings,                                     '2020-04-15/generated/azure_mgmt_cdn/models/policy_settings.rb'
    autoload :UrlRewriteActionParameters,                         '2020-04-15/generated/azure_mgmt_cdn/models/url_rewrite_action_parameters.rb'
    autoload :ErrorResponse,                                      '2020-04-15/generated/azure_mgmt_cdn/models/error_response.rb'
    autoload :RateLimitRuleList,                                  '2020-04-15/generated/azure_mgmt_cdn/models/rate_limit_rule_list.rb'
    autoload :CustomRuleList,                                     '2020-04-15/generated/azure_mgmt_cdn/models/custom_rule_list.rb'
    autoload :HeaderActionParameters,                             '2020-04-15/generated/azure_mgmt_cdn/models/header_action_parameters.rb'
    autoload :ManagedRuleOverride,                                '2020-04-15/generated/azure_mgmt_cdn/models/managed_rule_override.rb'
    autoload :Resource,                                           '2020-04-15/generated/azure_mgmt_cdn/models/resource.rb'
    autoload :ManagedRuleSetDefinitionList,                       '2020-04-15/generated/azure_mgmt_cdn/models/managed_rule_set_definition_list.rb'
    autoload :EdgenodeResult,                                     '2020-04-15/generated/azure_mgmt_cdn/models/edgenode_result.rb'
    autoload :CacheExpirationActionParameters,                    '2020-04-15/generated/azure_mgmt_cdn/models/cache_expiration_action_parameters.rb'
    autoload :ManagedRuleGroupOverride,                           '2020-04-15/generated/azure_mgmt_cdn/models/managed_rule_group_override.rb'
    autoload :ManagedRuleGroupDefinition,                         '2020-04-15/generated/azure_mgmt_cdn/models/managed_rule_group_definition.rb'
    autoload :IpAddressGroup,                                     '2020-04-15/generated/azure_mgmt_cdn/models/ip_address_group.rb'
    autoload :CacheKeyQueryStringActionParameters,                '2020-04-15/generated/azure_mgmt_cdn/models/cache_key_query_string_action_parameters.rb'
    autoload :CidrIpAddress,                                      '2020-04-15/generated/azure_mgmt_cdn/models/cidr_ip_address.rb'
    autoload :ManagedRuleDefinition,                              '2020-04-15/generated/azure_mgmt_cdn/models/managed_rule_definition.rb'
    autoload :OperationsListResult,                               '2020-04-15/generated/azure_mgmt_cdn/models/operations_list_result.rb'
    autoload :PurgeParameters,                                    '2020-04-15/generated/azure_mgmt_cdn/models/purge_parameters.rb'
    autoload :SupportedOptimizationTypesListResult,               '2020-04-15/generated/azure_mgmt_cdn/models/supported_optimization_types_list_result.rb'
    autoload :LoadParameters,                                     '2020-04-15/generated/azure_mgmt_cdn/models/load_parameters.rb'
    autoload :HttpErrorRangeParameters,                           '2020-04-15/generated/azure_mgmt_cdn/models/http_error_range_parameters.rb'
    autoload :CdnWebApplicationFirewallPolicyPatchParameters,     '2020-04-15/generated/azure_mgmt_cdn/models/cdn_web_application_firewall_policy_patch_parameters.rb'
    autoload :EndpointListResult,                                 '2020-04-15/generated/azure_mgmt_cdn/models/endpoint_list_result.rb'
    autoload :OriginUpdateParameters,                             '2020-04-15/generated/azure_mgmt_cdn/models/origin_update_parameters.rb'
    autoload :DeliveryRuleCondition,                              '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_condition.rb'
    autoload :OriginListResult,                                   '2020-04-15/generated/azure_mgmt_cdn/models/origin_list_result.rb'
    autoload :EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink, '2020-04-15/generated/azure_mgmt_cdn/models/endpoint_properties_update_parameters_web_application_firewall_policy_link.rb'
    autoload :CdnWebApplicationFirewallPolicyList,                '2020-04-15/generated/azure_mgmt_cdn/models/cdn_web_application_firewall_policy_list.rb'
    autoload :RequestMethodMatchConditionParameters,              '2020-04-15/generated/azure_mgmt_cdn/models/request_method_match_condition_parameters.rb'
    autoload :OriginGroupUpdateParameters,                        '2020-04-15/generated/azure_mgmt_cdn/models/origin_group_update_parameters.rb'
    autoload :PostArgsMatchConditionParameters,                   '2020-04-15/generated/azure_mgmt_cdn/models/post_args_match_condition_parameters.rb'
    autoload :OriginGroupListResult,                              '2020-04-15/generated/azure_mgmt_cdn/models/origin_group_list_result.rb'
    autoload :RequestHeaderMatchConditionParameters,              '2020-04-15/generated/azure_mgmt_cdn/models/request_header_match_condition_parameters.rb'
    autoload :CdnEndpoint,                                        '2020-04-15/generated/azure_mgmt_cdn/models/cdn_endpoint.rb'
    autoload :RequestSchemeMatchConditionParameters,              '2020-04-15/generated/azure_mgmt_cdn/models/request_scheme_match_condition_parameters.rb'
    autoload :CustomDomainParameters,                             '2020-04-15/generated/azure_mgmt_cdn/models/custom_domain_parameters.rb'
    autoload :UrlFileExtensionMatchConditionParameters,           '2020-04-15/generated/azure_mgmt_cdn/models/url_file_extension_match_condition_parameters.rb'
    autoload :CustomDomainHttpsParameters,                        '2020-04-15/generated/azure_mgmt_cdn/models/custom_domain_https_parameters.rb'
    autoload :HealthProbeParameters,                              '2020-04-15/generated/azure_mgmt_cdn/models/health_probe_parameters.rb'
    autoload :CdnCertificateSourceParameters,                     '2020-04-15/generated/azure_mgmt_cdn/models/cdn_certificate_source_parameters.rb'
    autoload :KeyVaultSigningKeyParameters,                       '2020-04-15/generated/azure_mgmt_cdn/models/key_vault_signing_key_parameters.rb'
    autoload :ManagedRuleSetList,                                 '2020-04-15/generated/azure_mgmt_cdn/models/managed_rule_set_list.rb'
    autoload :RemoteAddressMatchConditionParameters,              '2020-04-15/generated/azure_mgmt_cdn/models/remote_address_match_condition_parameters.rb'
    autoload :KeyVaultCertificateSourceParameters,                '2020-04-15/generated/azure_mgmt_cdn/models/key_vault_certificate_source_parameters.rb'
    autoload :RequestUriMatchConditionParameters,                 '2020-04-15/generated/azure_mgmt_cdn/models/request_uri_match_condition_parameters.rb'
    autoload :ManagedRuleSet,                                     '2020-04-15/generated/azure_mgmt_cdn/models/managed_rule_set.rb'
    autoload :UrlPathMatchConditionParameters,                    '2020-04-15/generated/azure_mgmt_cdn/models/url_path_match_condition_parameters.rb'
    autoload :CustomDomainListResult,                             '2020-04-15/generated/azure_mgmt_cdn/models/custom_domain_list_result.rb'
    autoload :DeepCreatedOriginGroup,                             '2020-04-15/generated/azure_mgmt_cdn/models/deep_created_origin_group.rb'
    autoload :ValidateCustomDomainInput,                          '2020-04-15/generated/azure_mgmt_cdn/models/validate_custom_domain_input.rb'
    autoload :QueryStringMatchConditionParameters,                '2020-04-15/generated/azure_mgmt_cdn/models/query_string_match_condition_parameters.rb'
    autoload :ValidateCustomDomainOutput,                         '2020-04-15/generated/azure_mgmt_cdn/models/validate_custom_domain_output.rb'
    autoload :ProfileUpdateParameters,                            '2020-04-15/generated/azure_mgmt_cdn/models/profile_update_parameters.rb'
    autoload :CheckNameAvailabilityInput,                         '2020-04-15/generated/azure_mgmt_cdn/models/check_name_availability_input.rb'
    autoload :RequestBodyMatchConditionParameters,                '2020-04-15/generated/azure_mgmt_cdn/models/request_body_match_condition_parameters.rb'
    autoload :CheckNameAvailabilityOutput,                        '2020-04-15/generated/azure_mgmt_cdn/models/check_name_availability_output.rb'
    autoload :DeliveryRule,                                       '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule.rb'
    autoload :ValidateProbeInput,                                 '2020-04-15/generated/azure_mgmt_cdn/models/validate_probe_input.rb'
    autoload :Profile,                                            '2020-04-15/generated/azure_mgmt_cdn/models/profile.rb'
    autoload :Endpoint,                                           '2020-04-15/generated/azure_mgmt_cdn/models/endpoint.rb'
    autoload :DeliveryRuleRemoteAddressCondition,                 '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_remote_address_condition.rb'
    autoload :DeliveryRuleRequestMethodCondition,                 '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_request_method_condition.rb'
    autoload :DeliveryRuleQueryStringCondition,                   '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_query_string_condition.rb'
    autoload :DeliveryRulePostArgsCondition,                      '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_post_args_condition.rb'
    autoload :DeliveryRuleRequestUriCondition,                    '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_request_uri_condition.rb'
    autoload :DeliveryRuleRequestHeaderCondition,                 '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_request_header_condition.rb'
    autoload :DeliveryRuleRequestBodyCondition,                   '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_request_body_condition.rb'
    autoload :DeliveryRuleRequestSchemeCondition,                 '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_request_scheme_condition.rb'
    autoload :DeliveryRuleUrlPathCondition,                       '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_url_path_condition.rb'
    autoload :DeliveryRuleUrlFileExtensionCondition,              '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_url_file_extension_condition.rb'
    autoload :DeliveryRuleUrlFileNameCondition,                   '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_url_file_name_condition.rb'
    autoload :DeliveryRuleHttpVersionCondition,                   '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_http_version_condition.rb'
    autoload :DeliveryRuleCookiesCondition,                       '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_cookies_condition.rb'
    autoload :DeliveryRuleIsDeviceCondition,                      '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_is_device_condition.rb'
    autoload :UrlRedirectAction,                                  '2020-04-15/generated/azure_mgmt_cdn/models/url_redirect_action.rb'
    autoload :UrlRewriteAction,                                   '2020-04-15/generated/azure_mgmt_cdn/models/url_rewrite_action.rb'
    autoload :DeliveryRuleRequestHeaderAction,                    '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_request_header_action.rb'
    autoload :DeliveryRuleResponseHeaderAction,                   '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_response_header_action.rb'
    autoload :DeliveryRuleCacheExpirationAction,                  '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_cache_expiration_action.rb'
    autoload :DeliveryRuleCacheKeyQueryStringAction,              '2020-04-15/generated/azure_mgmt_cdn/models/delivery_rule_cache_key_query_string_action.rb'
    autoload :ProxyResource,                                      '2020-04-15/generated/azure_mgmt_cdn/models/proxy_resource.rb'
    autoload :Origin,                                             '2020-04-15/generated/azure_mgmt_cdn/models/origin.rb'
    autoload :OriginGroup,                                        '2020-04-15/generated/azure_mgmt_cdn/models/origin_group.rb'
    autoload :CustomDomain,                                       '2020-04-15/generated/azure_mgmt_cdn/models/custom_domain.rb'
    autoload :CdnManagedHttpsParameters,                          '2020-04-15/generated/azure_mgmt_cdn/models/cdn_managed_https_parameters.rb'
    autoload :UserManagedHttpsParameters,                         '2020-04-15/generated/azure_mgmt_cdn/models/user_managed_https_parameters.rb'
    autoload :EdgeNode,                                           '2020-04-15/generated/azure_mgmt_cdn/models/edge_node.rb'
    autoload :TrackedResource,                                    '2020-04-15/generated/azure_mgmt_cdn/models/tracked_resource.rb'
    autoload :RateLimitRule,                                      '2020-04-15/generated/azure_mgmt_cdn/models/rate_limit_rule.rb'
    autoload :CdnWebApplicationFirewallPolicy,                    '2020-04-15/generated/azure_mgmt_cdn/models/cdn_web_application_firewall_policy.rb'
    autoload :ManagedRuleSetDefinition,                           '2020-04-15/generated/azure_mgmt_cdn/models/managed_rule_set_definition.rb'
    autoload :SkuName,                                            '2020-04-15/generated/azure_mgmt_cdn/models/sku_name.rb'
    autoload :ProfileResourceState,                               '2020-04-15/generated/azure_mgmt_cdn/models/profile_resource_state.rb'
    autoload :OptimizationType,                                   '2020-04-15/generated/azure_mgmt_cdn/models/optimization_type.rb'
    autoload :HealthProbeRequestType,                             '2020-04-15/generated/azure_mgmt_cdn/models/health_probe_request_type.rb'
    autoload :ProbeProtocol,                                      '2020-04-15/generated/azure_mgmt_cdn/models/probe_protocol.rb'
    autoload :ResponseBasedDetectedErrorTypes,                    '2020-04-15/generated/azure_mgmt_cdn/models/response_based_detected_error_types.rb'
    autoload :EndpointResourceState,                              '2020-04-15/generated/azure_mgmt_cdn/models/endpoint_resource_state.rb'
    autoload :QueryStringCachingBehavior,                         '2020-04-15/generated/azure_mgmt_cdn/models/query_string_caching_behavior.rb'
    autoload :GeoFilterActions,                                   '2020-04-15/generated/azure_mgmt_cdn/models/geo_filter_actions.rb'
    autoload :RemoteAddressOperator,                              '2020-04-15/generated/azure_mgmt_cdn/models/remote_address_operator.rb'
    autoload :Transform,                                          '2020-04-15/generated/azure_mgmt_cdn/models/transform.rb'
    autoload :QueryStringOperator,                                '2020-04-15/generated/azure_mgmt_cdn/models/query_string_operator.rb'
    autoload :PostArgsOperator,                                   '2020-04-15/generated/azure_mgmt_cdn/models/post_args_operator.rb'
    autoload :RequestUriOperator,                                 '2020-04-15/generated/azure_mgmt_cdn/models/request_uri_operator.rb'
    autoload :RequestHeaderOperator,                              '2020-04-15/generated/azure_mgmt_cdn/models/request_header_operator.rb'
    autoload :RequestBodyOperator,                                '2020-04-15/generated/azure_mgmt_cdn/models/request_body_operator.rb'
    autoload :UrlPathOperator,                                    '2020-04-15/generated/azure_mgmt_cdn/models/url_path_operator.rb'
    autoload :UrlFileExtensionOperator,                           '2020-04-15/generated/azure_mgmt_cdn/models/url_file_extension_operator.rb'
    autoload :UrlFileNameOperator,                                '2020-04-15/generated/azure_mgmt_cdn/models/url_file_name_operator.rb'
    autoload :CookiesOperator,                                    '2020-04-15/generated/azure_mgmt_cdn/models/cookies_operator.rb'
    autoload :RedirectType,                                       '2020-04-15/generated/azure_mgmt_cdn/models/redirect_type.rb'
    autoload :DestinationProtocol,                                '2020-04-15/generated/azure_mgmt_cdn/models/destination_protocol.rb'
    autoload :Algorithm,                                          '2020-04-15/generated/azure_mgmt_cdn/models/algorithm.rb'
    autoload :ParamIndicator,                                     '2020-04-15/generated/azure_mgmt_cdn/models/param_indicator.rb'
    autoload :HeaderAction,                                       '2020-04-15/generated/azure_mgmt_cdn/models/header_action.rb'
    autoload :CacheBehavior,                                      '2020-04-15/generated/azure_mgmt_cdn/models/cache_behavior.rb'
    autoload :QueryStringBehavior,                                '2020-04-15/generated/azure_mgmt_cdn/models/query_string_behavior.rb'
    autoload :OriginResourceState,                                '2020-04-15/generated/azure_mgmt_cdn/models/origin_resource_state.rb'
    autoload :PrivateEndpointStatus,                              '2020-04-15/generated/azure_mgmt_cdn/models/private_endpoint_status.rb'
    autoload :OriginGroupResourceState,                           '2020-04-15/generated/azure_mgmt_cdn/models/origin_group_resource_state.rb'
    autoload :CustomDomainResourceState,                          '2020-04-15/generated/azure_mgmt_cdn/models/custom_domain_resource_state.rb'
    autoload :CustomHttpsProvisioningState,                       '2020-04-15/generated/azure_mgmt_cdn/models/custom_https_provisioning_state.rb'
    autoload :CustomHttpsProvisioningSubstate,                    '2020-04-15/generated/azure_mgmt_cdn/models/custom_https_provisioning_substate.rb'
    autoload :ProtocolType,                                       '2020-04-15/generated/azure_mgmt_cdn/models/protocol_type.rb'
    autoload :MinimumTlsVersion,                                  '2020-04-15/generated/azure_mgmt_cdn/models/minimum_tls_version.rb'
    autoload :CertificateType,                                    '2020-04-15/generated/azure_mgmt_cdn/models/certificate_type.rb'
    autoload :ResourceType,                                       '2020-04-15/generated/azure_mgmt_cdn/models/resource_type.rb'
    autoload :PolicyEnabledState,                                 '2020-04-15/generated/azure_mgmt_cdn/models/policy_enabled_state.rb'
    autoload :PolicyMode,                                         '2020-04-15/generated/azure_mgmt_cdn/models/policy_mode.rb'
    autoload :CustomRuleEnabledState,                             '2020-04-15/generated/azure_mgmt_cdn/models/custom_rule_enabled_state.rb'
    autoload :MatchVariable,                                      '2020-04-15/generated/azure_mgmt_cdn/models/match_variable.rb'
    autoload :Operator,                                           '2020-04-15/generated/azure_mgmt_cdn/models/operator.rb'
    autoload :TransformType,                                      '2020-04-15/generated/azure_mgmt_cdn/models/transform_type.rb'
    autoload :ActionType,                                         '2020-04-15/generated/azure_mgmt_cdn/models/action_type.rb'
    autoload :ManagedRuleEnabledState,                            '2020-04-15/generated/azure_mgmt_cdn/models/managed_rule_enabled_state.rb'
    autoload :ProvisioningState,                                  '2020-04-15/generated/azure_mgmt_cdn/models/provisioning_state.rb'
    autoload :PolicyResourceState,                                '2020-04-15/generated/azure_mgmt_cdn/models/policy_resource_state.rb'
  end
end
