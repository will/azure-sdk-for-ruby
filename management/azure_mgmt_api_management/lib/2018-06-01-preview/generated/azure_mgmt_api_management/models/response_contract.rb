# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Operation response details.
    #
    class ResponseContract

      include MsRestAzure

      # @return [Integer] Operation response HTTP status code.
      attr_accessor :status_code

      # @return [String] Operation response description.
      attr_accessor :description

      # @return [Array<RepresentationContract>] Collection of operation
      # response representations.
      attr_accessor :representations

      # @return [Array<ParameterContract>] Collection of operation response
      # headers.
      attr_accessor :headers


      #
      # Mapper for ResponseContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResponseContract',
          type: {
            name: 'Composite',
            class_name: 'ResponseContract',
            model_properties: {
              status_code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'statusCode',
                type: {
                  name: 'Number'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              representations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'representations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RepresentationContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RepresentationContract'
                      }
                  }
                }
              },
              headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'headers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterContract'
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
