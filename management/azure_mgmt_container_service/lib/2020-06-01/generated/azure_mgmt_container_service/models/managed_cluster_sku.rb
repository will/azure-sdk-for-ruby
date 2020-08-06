# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_06_01
  module Models
    #
    # Model object.
    #
    #
    class ManagedClusterSKU

      include MsRestAzure

      # @return [ManagedClusterSKUName] Name of a managed cluster SKU. Possible
      # values include: 'Basic'
      attr_accessor :name

      # @return [ManagedClusterSKUTier] Tier of a managed cluster SKU. Possible
      # values include: 'Paid', 'Free'
      attr_accessor :tier


      #
      # Mapper for ManagedClusterSKU class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterSKU',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterSKU',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tier',
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
