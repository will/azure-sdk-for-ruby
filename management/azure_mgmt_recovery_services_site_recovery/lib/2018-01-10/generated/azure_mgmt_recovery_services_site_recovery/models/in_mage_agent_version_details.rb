# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # InMage agent version details.
    #
    class InMageAgentVersionDetails

      include MsRestAzure

      # @return [String] A value indicating whether reboot is required after
      # update is applied.
      attr_accessor :post_update_reboot_status

      # @return [String] The agent version.
      attr_accessor :version

      # @return [DateTime] Version expiry date.
      attr_accessor :expiry_date

      # @return [AgentVersionStatus] A value indicating whether security update
      # required. Possible values include: 'Supported', 'NotSupported',
      # 'Deprecated', 'UpdateRequired', 'SecurityUpdateRequired'
      attr_accessor :status


      #
      # Mapper for InMageAgentVersionDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InMageAgentVersionDetails',
          type: {
            name: 'Composite',
            class_name: 'InMageAgentVersionDetails',
            model_properties: {
              post_update_reboot_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'postUpdateRebootStatus',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              },
              expiry_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expiryDate',
                type: {
                  name: 'DateTime'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
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
