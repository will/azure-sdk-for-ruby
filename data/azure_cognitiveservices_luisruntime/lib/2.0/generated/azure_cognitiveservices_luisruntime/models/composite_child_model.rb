# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisRuntime::V2_0
  module Models
    #
    # Child entity in a LUIS Composite Entity.
    #
    class CompositeChildModel

      include MsRestAzure

      # @return [String] Type of child entity.
      attr_accessor :type

      # @return [String] Value extracted by LUIS.
      attr_accessor :value


      #
      # Mapper for CompositeChildModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CompositeChildModel',
          type: {
            name: 'Composite',
            class_name: 'CompositeChildModel',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
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