# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Parameters supplied to the UpdateHostname operation.
    #
    class ApiManagementServiceUpdateHostnameParameters

      include MsRestAzure

      # @return [Array<HostnameConfiguration>] Hostnames to create or update.
      attr_accessor :update

      # @return [Array<HostnameType>] Hostnames types to delete.
      attr_accessor :delete


      #
      # Mapper for ApiManagementServiceUpdateHostnameParameters class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiManagementServiceUpdateHostnameParameters',
          type: {
            name: 'Composite',
            class_name: 'ApiManagementServiceUpdateHostnameParameters',
            model_properties: {
              update: {
                client_side_validation: true,
                required: false,
                serialized_name: 'update',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HostnameConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HostnameConfiguration'
                      }
                  }
                }
              },
              delete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'delete',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HostnameTypeElementType',
                      type: {
                        name: 'Enum',
                        module: 'HostnameType'
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
