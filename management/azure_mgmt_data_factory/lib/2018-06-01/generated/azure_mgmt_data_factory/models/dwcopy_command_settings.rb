# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # DW Copy Command settings.
    #
    class DWCopyCommandSettings

      include MsRestAzure

      # @return [Array<DWCopyCommandDefaultValue>] Specifies the default values
      # for each target column in SQL DW. The default values in the property
      # overwrite the DEFAULT constraint set in the DB, and identity column
      # cannot have a default value. Type: array of objects (or Expression with
      # resultType array of objects).
      attr_accessor :default_values

      # @return [Hash{String => String}] Additional options directly passed to
      # SQL DW in Copy Command. Type: key value pairs (value should be string
      # type) (or Expression with resultType object). Example:
      # "additionalOptions": { "MAXERRORS": "1000", "DATEFORMAT": "'ymd'" }
      attr_accessor :additional_options


      #
      # Mapper for DWCopyCommandSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DWCopyCommandSettings',
          type: {
            name: 'Composite',
            class_name: 'DWCopyCommandSettings',
            model_properties: {
              default_values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultValues',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DWCopyCommandDefaultValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DWCopyCommandDefaultValue'
                      }
                  }
                }
              },
              additional_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalOptions',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
