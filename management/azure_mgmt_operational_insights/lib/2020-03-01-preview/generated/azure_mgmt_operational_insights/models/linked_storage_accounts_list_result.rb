# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_03_01_preview
  module Models
    #
    # The list linked storage accounts service operation response.
    #
    class LinkedStorageAccountsListResult

      include MsRestAzure

      # @return [Array<LinkedStorageAccountsResource>] A list of linked storage
      # accounts instances.
      attr_accessor :value


      #
      # Mapper for LinkedStorageAccountsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LinkedStorageAccountsListResult',
          type: {
            name: 'Composite',
            class_name: 'LinkedStorageAccountsListResult',
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
                      serialized_name: 'LinkedStorageAccountsResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LinkedStorageAccountsResource'
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
