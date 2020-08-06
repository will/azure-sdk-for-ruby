# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_04_30
  module Models
    #
    # Structure for any Identity provider.
    #
    class OpenShiftManagedClusterBaseIdentityProvider

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AADIdentityProvider"] = "OpenShiftManagedClusterAADIdentityProvider"

      def initialize
        @kind = "OpenShiftManagedClusterBaseIdentityProvider"
      end

      attr_accessor :kind


      #
      # Mapper for OpenShiftManagedClusterBaseIdentityProvider class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OpenShiftManagedClusterBaseIdentityProvider',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'kind',
            uber_parent: 'OpenShiftManagedClusterBaseIdentityProvider',
            class_name: 'OpenShiftManagedClusterBaseIdentityProvider',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
