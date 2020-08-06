# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview
  module Models
    #
    # Compliance Status details
    #
    class ComplianceStatus

      include MsRestAzure

      # @return [ComplianceState] The compliance state of the configuration.
      # Possible values include: 'Pending', 'Compliant', 'Noncompliant'
      attr_accessor :compliance_state

      # @return [DateTime] Datetime the configuration was last applied.
      attr_accessor :last_config_applied

      # @return [String] Message from when the configuration was applied.
      attr_accessor :message

      # @return [MessageLevel] Level of the message. Possible values include:
      # 'Error', 'Warning', 'Information'
      attr_accessor :message_level


      #
      # Mapper for ComplianceStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ComplianceStatus',
          type: {
            name: 'Composite',
            class_name: 'ComplianceStatus',
            model_properties: {
              compliance_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'complianceState',
                type: {
                  name: 'String'
                }
              },
              last_config_applied: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastConfigApplied',
                type: {
                  name: 'DateTime'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              message_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'messageLevel',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
