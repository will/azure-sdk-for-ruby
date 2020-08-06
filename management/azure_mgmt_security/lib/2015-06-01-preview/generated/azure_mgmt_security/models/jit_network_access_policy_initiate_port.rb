# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2015_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class JitNetworkAccessPolicyInitiatePort

      include MsRestAzure

      # @return [Integer]
      attr_accessor :number

      # @return [String] Source of the allowed traffic. If omitted, the request
      # will be for the source IP address of the initiate request.
      attr_accessor :allowed_source_address_prefix

      # @return [DateTime] The time to close the request in UTC
      attr_accessor :end_time_utc


      #
      # Mapper for JitNetworkAccessPolicyInitiatePort class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JitNetworkAccessPolicyInitiatePort',
          type: {
            name: 'Composite',
            class_name: 'JitNetworkAccessPolicyInitiatePort',
            model_properties: {
              number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'number',
                type: {
                  name: 'Number'
                }
              },
              allowed_source_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedSourceAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              end_time_utc: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endTimeUtc',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
