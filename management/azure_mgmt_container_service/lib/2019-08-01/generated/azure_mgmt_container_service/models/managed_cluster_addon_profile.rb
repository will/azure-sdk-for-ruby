# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_08_01
  module Models
    #
    # A Kubernetes add-on profile for a managed cluster.
    #
    class ManagedClusterAddonProfile

      include MsRestAzure

      # @return [Boolean] Whether the add-on is enabled or not.
      attr_accessor :enabled

      # @return [Hash{String => String}] Key-value pairs for configuring an
      # add-on.
      attr_accessor :config


      #
      # Mapper for ManagedClusterAddonProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterAddonProfile',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterAddonProfile',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'config',
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
              }
            }
          }
        }
      end
    end
  end
end
