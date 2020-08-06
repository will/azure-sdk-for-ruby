# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # class to define the summary of the health error details.
    #
    class HealthErrorSummary

      include MsRestAzure

      # @return [String] The code of the health error.
      attr_accessor :summary_code

      # @return [HealthErrorCategory] The category of the health error.
      # Possible values include: 'None', 'Replication', 'TestFailover',
      # 'Configuration', 'FabricInfrastructure', 'VersionExpiry',
      # 'AgentAutoUpdate'
      attr_accessor :category

      # @return [Severity] Severity of error. Possible values include: 'NONE',
      # 'Warning', 'Error', 'Info'
      attr_accessor :severity

      # @return [String] The summary message of the health error.
      attr_accessor :summary_message

      # @return [String] The type of affected ARM resource.
      attr_accessor :affected_resource_type

      # @return [String] The sub type of any subcomponent within the ARM
      # resource that this might be applicable. Value remains null if not
      # applicable.
      attr_accessor :affected_resource_subtype

      # @return [Array<String>] The list of affected resource correlation Ids.
      # This can be used to uniquely identify the count of items affected by a
      # specific category and severity as well as count of item affected by an
      # specific issue.
      attr_accessor :affected_resource_correlation_ids


      #
      # Mapper for HealthErrorSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HealthErrorSummary',
          type: {
            name: 'Composite',
            class_name: 'HealthErrorSummary',
            model_properties: {
              summary_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'summaryCode',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'category',
                type: {
                  name: 'String'
                }
              },
              severity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'severity',
                type: {
                  name: 'String'
                }
              },
              summary_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'summaryMessage',
                type: {
                  name: 'String'
                }
              },
              affected_resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'affectedResourceType',
                type: {
                  name: 'String'
                }
              },
              affected_resource_subtype: {
                client_side_validation: true,
                required: false,
                serialized_name: 'affectedResourceSubtype',
                type: {
                  name: 'String'
                }
              },
              affected_resource_correlation_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'affectedResourceCorrelationIds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
