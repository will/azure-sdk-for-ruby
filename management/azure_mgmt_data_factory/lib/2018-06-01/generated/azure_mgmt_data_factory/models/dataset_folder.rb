# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The folder that this Dataset is in. If not specified, Dataset will appear
    # at the root level.
    #
    class DatasetFolder

      include MsRestAzure

      # @return [String] The name of the folder that this Dataset is in.
      attr_accessor :name


      #
      # Mapper for DatasetFolder class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Dataset_folder',
          type: {
            name: 'Composite',
            class_name: 'DatasetFolder',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
