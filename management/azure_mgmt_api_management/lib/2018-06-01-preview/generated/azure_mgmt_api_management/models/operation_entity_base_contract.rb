# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Api Operation Entity Base Contract details.
    #
    class OperationEntityBaseContract

      include MsRestAzure

      # @return [Array<ParameterContract>] Collection of URL template
      # parameters.
      attr_accessor :template_parameters

      # @return [String] Description of the operation. May include HTML
      # formatting tags.
      attr_accessor :description

      # @return [RequestContract] An entity containing request details.
      attr_accessor :request

      # @return [Array<ResponseContract>] Array of Operation responses.
      attr_accessor :responses

      # @return [String] Operation Policies
      attr_accessor :policies


      #
      # Mapper for OperationEntityBaseContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationEntityBaseContract',
          type: {
            name: 'Composite',
            class_name: 'OperationEntityBaseContract',
            model_properties: {
              template_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'templateParameters',
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
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                constraints: {
                  MaxLength: 1000
                },
                type: {
                  name: 'String'
                }
              },
              request: {
                client_side_validation: true,
                required: false,
                serialized_name: 'request',
                type: {
                  name: 'Composite',
                  class_name: 'RequestContract'
                }
              },
              responses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'responses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResponseContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResponseContract'
                      }
                  }
                }
              },
              policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policies',
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
