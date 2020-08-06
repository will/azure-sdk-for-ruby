# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Policy Contract details.
    #
    class PolicyContract < Resource

      include MsRestAzure

      # @return [String] Contents of the Policy as defined by the format.
      attr_accessor :value

      # @return [PolicyContentFormat] Format of the policyContent. Possible
      # values include: 'xml', 'xml-link', 'rawxml', 'rawxml-link'. Default
      # value: 'xml' .
      attr_accessor :format


      #
      # Mapper for PolicyContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyContract',
          type: {
            name: 'Composite',
            class_name: 'PolicyContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.value',
                type: {
                  name: 'String'
                }
              },
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.format',
                default_value: 'xml',
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
