# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Data flow debug resource.
    #
    class DataFlowDebugResource < SubResourceDebugResource

      include MsRestAzure

      # @return [DataFlow] Data flow properties.
      attr_accessor :properties


      #
      # Mapper for DataFlowDebugResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataFlowDebugResource',
          type: {
            name: 'Composite',
            class_name: 'DataFlowDebugResource',
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
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'DataFlow',
                  class_name: 'DataFlow'
                }
              }
            }
          }
        }
      end
    end
  end
end
