# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2015_06_01_preview
  module Models
    #
    # Represents a summary of the alerts of the VM/server group
    #
    class AppWhitelistingIssueSummary

      include MsRestAzure

      # @return [Enum] Possible values include: 'ViolationsAudited',
      # 'ViolationsBlocked', 'MsiAndScriptViolationsAudited',
      # 'MsiAndScriptViolationsBlocked', 'ExecutableViolationsAudited',
      # 'RulesViolatedManually'
      attr_accessor :issue

      # @return [Float] The number of machines in the VM/server group that have
      # this alert
      attr_accessor :number_of_vms


      #
      # Mapper for AppWhitelistingIssueSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AppWhitelistingIssueSummary',
          type: {
            name: 'Composite',
            class_name: 'AppWhitelistingIssueSummary',
            model_properties: {
              issue: {
                client_side_validation: true,
                required: false,
                serialized_name: 'issue',
                type: {
                  name: 'String'
                }
              },
              number_of_vms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'numberOfVms',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
