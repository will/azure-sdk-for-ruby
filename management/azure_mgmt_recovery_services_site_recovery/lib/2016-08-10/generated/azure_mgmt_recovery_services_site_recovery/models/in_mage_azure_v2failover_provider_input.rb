# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # InMageAzureV2 provider specific input for failover.
    #
    class InMageAzureV2FailoverProviderInput < ProviderSpecificFailoverInput

      include MsRestAzure


      def initialize
        @instanceType = "InMageAzureV2"
      end

      attr_accessor :instanceType

      # @return [String] Location of the vault.
      attr_accessor :vault_location

      # @return [String] The recovery point id to be passed to failover to a
      # particular recovery point. In case of latest recovery point, null
      # should be passed.
      attr_accessor :recovery_point_id


      #
      # Mapper for InMageAzureV2FailoverProviderInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InMageAzureV2',
          type: {
            name: 'Composite',
            class_name: 'InMageAzureV2FailoverProviderInput',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              vault_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vaultLocation',
                type: {
                  name: 'String'
                }
              },
              recovery_point_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointId',
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
