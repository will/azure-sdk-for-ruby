# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_10_01
  module Models
    #
    # A reference to an Azure resource.
    #
    class ResourceReference

      include MsRestAzure

      # @return [String] The fully qualified Azure resource id.
      attr_accessor :id


      #
      # Mapper for ResourceReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceReference',
          type: {
            name: 'Composite',
            class_name: 'ResourceReference',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
