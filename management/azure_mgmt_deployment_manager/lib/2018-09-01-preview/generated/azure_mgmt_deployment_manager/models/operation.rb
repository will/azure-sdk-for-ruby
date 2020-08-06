# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2018_09_01_preview
  module Models
    #
    # Represents an operation that can be performed on the service.
    #
    class Operation

      include MsRestAzure

      # @return [String] The name of the operation.
      attr_accessor :name

      # @return [OperationDetail] The display name of the operation.
      attr_accessor :display

      # @return [String] The origin of the operation.
      attr_accessor :origin

      # @return The properties of the operation.
      attr_accessor :properties


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
                  class_name: 'OperationDetail'
                }
              },
              origin: {
                client_side_validation: true,
                required: false,
                serialized_name: 'origin',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
