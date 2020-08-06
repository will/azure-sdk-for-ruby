# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Azure to Azure VM synced configuration details.
    #
    class AzureToAzureVmSyncedConfigDetails

      include MsRestAzure

      # @return [Hash{String => String}] The Azure VM tags.
      attr_accessor :tags

      # @return [Array<RoleAssignment>] The Azure role assignments.
      attr_accessor :role_assignments

      # @return [Array<InputEndpoint>] The Azure VM input endpoints.
      attr_accessor :input_endpoints


      #
      # Mapper for AzureToAzureVmSyncedConfigDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureToAzureVmSyncedConfigDetails',
          type: {
            name: 'Composite',
            class_name: 'AzureToAzureVmSyncedConfigDetails',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              role_assignments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'roleAssignments',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RoleAssignmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RoleAssignment'
                      }
                  }
                }
              },
              input_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'inputEndpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InputEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InputEndpoint'
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
