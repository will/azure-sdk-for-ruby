# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Email Template Parameter contract.
    #
    class EmailTemplateParametersContractProperties

      include MsRestAzure

      # @return [String] Template parameter name.
      attr_accessor :name

      # @return [String] Template parameter title.
      attr_accessor :title

      # @return [String] Template parameter description.
      attr_accessor :description


      #
      # Mapper for EmailTemplateParametersContractProperties class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EmailTemplateParametersContractProperties',
          type: {
            name: 'Composite',
            class_name: 'EmailTemplateParametersContractProperties',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1,
                  Pattern: '^[A-Za-z0-9-._]+$'
                },
                type: {
                  name: 'String'
                }
              },
              title: {
                client_side_validation: true,
                required: false,
                serialized_name: 'title',
                constraints: {
                  MaxLength: 4096,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1,
                  Pattern: '^[A-Za-z0-9-._]+$'
                },
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
