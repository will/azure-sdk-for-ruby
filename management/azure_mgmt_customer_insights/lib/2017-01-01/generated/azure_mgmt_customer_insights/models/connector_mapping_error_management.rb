# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # The error mangement.
    #
    class ConnectorMappingErrorManagement

      include MsRestAzure

      # @return [ErrorManagementTypes] The type of error management to use for
      # the mapping. Possible values include: 'RejectAndContinue',
      # 'StopImport', 'RejectUntilLimit'
      attr_accessor :error_management_type

      # @return [Integer] The error limit allowed while importing data.
      attr_accessor :error_limit


      #
      # Mapper for ConnectorMappingErrorManagement class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectorMappingErrorManagement',
          type: {
            name: 'Composite',
            class_name: 'ConnectorMappingErrorManagement',
            model_properties: {
              error_management_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'errorManagementType',
                type: {
                  name: 'Enum',
                  module: 'ErrorManagementTypes'
                }
              },
              error_limit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorLimit',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
