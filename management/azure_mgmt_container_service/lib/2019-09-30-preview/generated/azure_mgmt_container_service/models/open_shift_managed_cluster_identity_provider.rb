# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_09_30_preview
  module Models
    #
    # Defines the configuration of the identity providers to be used in the
    # OpenShift cluster.
    #
    class OpenShiftManagedClusterIdentityProvider

      include MsRestAzure

      # @return [String] Name of the provider.
      attr_accessor :name

      # @return [OpenShiftManagedClusterBaseIdentityProvider] Configuration of
      # the provider.
      attr_accessor :provider


      #
      # Mapper for OpenShiftManagedClusterIdentityProvider class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OpenShiftManagedClusterIdentityProvider',
          type: {
            name: 'Composite',
            class_name: 'OpenShiftManagedClusterIdentityProvider',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'kind',
                  uber_parent: 'OpenShiftManagedClusterBaseIdentityProvider',
                  class_name: 'OpenShiftManagedClusterBaseIdentityProvider'
                }
              }
            }
          }
        }
      end
    end
  end
end
