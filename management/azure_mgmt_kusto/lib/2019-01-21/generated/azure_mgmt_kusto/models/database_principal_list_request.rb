# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_01_21
  module Models
    #
    # The list Kusto database principals operation request.
    #
    class DatabasePrincipalListRequest

      include MsRestAzure

      # @return [Array<DatabasePrincipal>] The list of Kusto database
      # principals.
      attr_accessor :value


      #
      # Mapper for DatabasePrincipalListRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabasePrincipalListRequest',
          type: {
            name: 'Composite',
            class_name: 'DatabasePrincipalListRequest',
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
