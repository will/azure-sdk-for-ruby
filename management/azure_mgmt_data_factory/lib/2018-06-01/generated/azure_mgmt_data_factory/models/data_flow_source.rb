# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Transformation for data flow source.
    #
    class DataFlowSource < Transformation

      include MsRestAzure

      # @return [DatasetReference] Dataset reference.
      attr_accessor :dataset

      # @return [LinkedServiceReference] Linked service reference.
      attr_accessor :linked_service

      # @return [LinkedServiceReference] Schema linked service reference.
      attr_accessor :schema_linked_service


      #
      # Mapper for DataFlowSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataFlowSource',
          type: {
            name: 'Composite',
            class_name: 'DataFlowSource',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              dataset: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataset',
                type: {
                  name: 'Composite',
                  class_name: 'DatasetReference'
                }
              },
              linked_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkedService',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              schema_linked_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'schemaLinkedService',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              }
            }
          }
        }
      end
    end
  end
end
