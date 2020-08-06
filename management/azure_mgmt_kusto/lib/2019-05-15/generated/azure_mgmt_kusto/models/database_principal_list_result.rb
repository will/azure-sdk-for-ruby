# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_05_15
  module Models
    #
    # The list Kusto database principals operation response.
    #
    class DatabasePrincipalListResult

      include MsRestAzure

      # @return [Array<DatabasePrincipal>] The list of Kusto database
      # principals.
      attr_accessor :value


      #
      # Mapper for DatabasePrincipalListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabasePrincipalListResult',
          type: {
            name: 'Composite',
            class_name: 'DatabasePrincipalListResult',
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
                      serialized_name: 'DatabasePrincipalElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DatabasePrincipal'
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
