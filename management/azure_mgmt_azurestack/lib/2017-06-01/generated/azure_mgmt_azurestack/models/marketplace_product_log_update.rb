# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AzureStack::Mgmt::V2017_06_01
  module Models
    #
    # Update details for product log.
    #
    class MarketplaceProductLogUpdate

      include MsRestAzure

      # @return [String] Operation to log.
      attr_accessor :operation

      # @return [String] Operation status to log.
      attr_accessor :status

      # @return [String] Error related to the operation.
      attr_accessor :error

      # @return [String] Error details related to operation.
      attr_accessor :details


      #
      # Mapper for MarketplaceProductLogUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MarketplaceProductLogUpdate',
          type: {
            name: 'Composite',
            class_name: 'MarketplaceProductLogUpdate',
            model_properties: {
              operation: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'details',
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
