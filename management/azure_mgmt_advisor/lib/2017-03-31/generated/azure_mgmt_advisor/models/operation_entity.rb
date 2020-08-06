# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Advisor::Mgmt::V2017_03_31
  module Models
    #
    # The operation supported by Advisor.
    #
    class OperationEntity

      include MsRestAzure

      # @return [String] Operation name: {provider}/{resource}/{operation}.
      attr_accessor :name

      # @return [OperationDisplayInfo] The operation supported by Advisor.
      attr_accessor :display


      #
      # Mapper for OperationEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationEntity',
          type: {
            name: 'Composite',
            class_name: 'OperationEntity',
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
                  class_name: 'OperationDisplayInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
