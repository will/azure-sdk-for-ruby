# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_09_15_preview
  module Models
    #
    # Represents an operation returned by the GetOperations request
    #
    class Operation

      include MsRestAzure

      # @return [String] Name of the operation
      attr_accessor :name

      # @return [OperationInfo] Display name of the operation
      attr_accessor :display

      # @return [String] Origin of the operation
      attr_accessor :origin

      # @return Properties of the operation
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
                  class_name: 'OperationInfo'
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
