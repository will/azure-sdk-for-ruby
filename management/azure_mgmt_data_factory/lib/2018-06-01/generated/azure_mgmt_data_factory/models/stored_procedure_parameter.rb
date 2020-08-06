# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # SQL stored procedure parameter.
    #
    class StoredProcedureParameter

      include MsRestAzure

      # @return Stored procedure parameter value. Type: string (or Expression
      # with resultType string).
      attr_accessor :value

      # @return [StoredProcedureParameterType] Stored procedure parameter type.
      # Possible values include: 'String', 'Int', 'Int64', 'Decimal', 'Guid',
      # 'Boolean', 'Date'
      attr_accessor :type


      #
      # Mapper for StoredProcedureParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StoredProcedureParameter',
          type: {
            name: 'Composite',
            class_name: 'StoredProcedureParameter',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Object'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
