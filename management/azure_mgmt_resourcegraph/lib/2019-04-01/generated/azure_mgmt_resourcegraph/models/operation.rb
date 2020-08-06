# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceGraph::Mgmt::V2019_04_01
  module Models
    #
    # Resource Graph REST API operation definition.
    #
    class Operation

      include MsRestAzure

      # @return [String] Operation name: {provider}/{resource}/{operation}
      attr_accessor :name

      # @return [OperationDisplay] Display metadata associated with the
      # operation.
      attr_accessor :display

      # @return [String] The origin of operations.
      attr_accessor :origin


      #
      # Mapper for Operation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Operation',
          type: {
            name: 'Composite',
            class_name: 'Operation',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                client_side_validation: true,
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'OperationDisplay'
                }
              },
              origin: {
                client_side_validation: true,
                required: false,
                serialized_name: 'origin',
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
