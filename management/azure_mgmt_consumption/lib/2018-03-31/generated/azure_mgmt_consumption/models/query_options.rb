# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_03_31
  module Models
    #
    # Additional parameters for a set of operations.
    #
    class QueryOptions

      include MsRestAzure

      # @return [String] OData apply expression to aggregate usageDetails by
      # tags or (tags and properties/usageStart)
      attr_accessor :apply


      #
      # Mapper for QueryOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          type: {
            name: 'Composite',
            class_name: 'QueryOptions',
            model_properties: {
              apply: {
                client_side_validation: true,
                required: false,
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
