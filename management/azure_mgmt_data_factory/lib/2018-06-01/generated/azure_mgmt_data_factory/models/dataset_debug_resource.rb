# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Dataset debug resource.
    #
    class DatasetDebugResource < SubResourceDebugResource

      include MsRestAzure

      # @return [Dataset] Dataset properties.
      attr_accessor :properties


      #
      # Mapper for DatasetDebugResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatasetDebugResource',
          type: {
            name: 'Composite',
            class_name: 'DatasetDebugResource',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties',
                default_value: {},
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'Dataset',
                  class_name: 'Dataset'
                }
              }
            }
          }
        }
      end
    end
  end
end
