# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The list of import errors.
    #
    class ImportErrors

      include MsRestAzure

      # @return [Array<ImportError>] The value returned by the operation.
      attr_accessor :value


      #
      # Mapper for ImportErrors class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImportErrors',
          type: {
            name: 'Composite',
            class_name: 'ImportErrors',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ImportErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImportError'
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
