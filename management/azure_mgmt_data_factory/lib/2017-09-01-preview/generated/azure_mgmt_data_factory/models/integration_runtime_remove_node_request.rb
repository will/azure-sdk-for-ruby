# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Request to remove a node.
    #
    class IntegrationRuntimeRemoveNodeRequest

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] The name of the node to be removed.
      attr_accessor :node_name


      #
      # Mapper for IntegrationRuntimeRemoveNodeRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationRuntimeRemoveNodeRequest',
          type: {
            name: 'Composite',
            class_name: 'IntegrationRuntimeRemoveNodeRequest',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              node_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodeName',
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
