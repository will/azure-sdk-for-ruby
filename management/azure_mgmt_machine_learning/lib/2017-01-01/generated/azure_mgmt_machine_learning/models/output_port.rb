# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearning::Mgmt::V2017_01_01
  module Models
    #
    # Asset output port
    #
    class OutputPort

      include MsRestAzure

      # @return [OutputPortType] Port data type. Possible values include:
      # 'Dataset'. Default value: 'Dataset' .
      attr_accessor :type


      #
      # Mapper for OutputPort class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OutputPort',
          type: {
            name: 'Composite',
            class_name: 'OutputPort',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                default_value: 'Dataset',
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
