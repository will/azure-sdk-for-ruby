# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2018_11_01_preview
  module Models
    #
    # Base data transfer object implementation for default resources.
    #
    class DefaultDto

      include MsRestAzure

      # @return [String] The resource id of the azure resource
      attr_accessor :id

      # @return [String] Location of the azure resource.
      attr_accessor :location

      # @return [String] Name of the azure resource
      attr_accessor :name

      # @return [Hash{String => String}] Tags on the azure resource.
      attr_accessor :tags

      # @return [String] Type of the azure resource
      attr_accessor :type


      #
      # Mapper for DefaultDto class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DefaultDto',
          type: {
            name: 'Composite',
            class_name: 'DefaultDto',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
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
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
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
              }
            }
          }
        }
      end
    end
  end
end
