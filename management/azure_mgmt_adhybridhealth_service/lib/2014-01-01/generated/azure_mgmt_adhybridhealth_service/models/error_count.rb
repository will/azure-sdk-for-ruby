# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The error count details.
    #
    class ErrorCount

      include MsRestAzure

      # @return [String] The error bucket.
      attr_accessor :error_bucket

      # @return [Integer] The error count.
      attr_accessor :count

      # @return [Boolean] Indicates if the error count is truncated or not.
      attr_accessor :truncated


      #
      # Mapper for ErrorCount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorCount',
          type: {
            name: 'Composite',
            class_name: 'ErrorCount',
            model_properties: {
              error_bucket: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorBucket',
                type: {
                  name: 'String'
                }
              },
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              truncated: {
                client_side_validation: true,
                required: false,
                serialized_name: 'truncated',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
