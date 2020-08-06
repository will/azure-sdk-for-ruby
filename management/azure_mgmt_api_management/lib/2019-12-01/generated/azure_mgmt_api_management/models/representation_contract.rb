# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Operation request/response representation details.
    #
    class RepresentationContract

      include MsRestAzure

      # @return [String] Specifies a registered or custom content type for this
      # representation, e.g. application/xml.
      attr_accessor :content_type

      # @return [String] An example of the representation.
      attr_accessor :sample

      # @return [String] Schema identifier. Applicable only if 'contentType'
      # value is neither 'application/x-www-form-urlencoded' nor
      # 'multipart/form-data'.
      attr_accessor :schema_id

      # @return [String] Type name defined by the schema. Applicable only if
      # 'contentType' value is neither 'application/x-www-form-urlencoded' nor
      # 'multipart/form-data'.
      attr_accessor :type_name

      # @return [Array<ParameterContract>] Collection of form parameters.
      # Required if 'contentType' value is either
      # 'application/x-www-form-urlencoded' or 'multipart/form-data'..
      attr_accessor :form_parameters


      #
      # Mapper for RepresentationContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RepresentationContract',
          type: {
            name: 'Composite',
            class_name: 'RepresentationContract',
            model_properties: {
              content_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'contentType',
                type: {
                  name: 'String'
                }
              },
              sample: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sample',
                type: {
                  name: 'String'
                }
              },
              schema_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'schemaId',
                type: {
                  name: 'String'
                }
              },
              type_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeName',
                type: {
                  name: 'String'
                }
              },
              form_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'formParameters',
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
