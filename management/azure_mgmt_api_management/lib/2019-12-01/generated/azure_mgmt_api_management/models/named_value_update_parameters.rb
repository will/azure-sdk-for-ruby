# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # NamedValue update Parameters.
    #
    class NamedValueUpdateParameters

      include MsRestAzure

      # @return [Array<String>] Optional tags that when provided can be used to
      # filter the NamedValue list.
      attr_accessor :tags

      # @return [Boolean] Determines whether the value is a secret and should
      # be encrypted or not. Default value is false.
      attr_accessor :secret

      # @return [String] Unique name of NamedValue. It may contain only
      # letters, digits, period, dash, and underscore characters.
      attr_accessor :display_name

      # @return [String] Value of the NamedValue. Can contain policy
      # expressions. It may not be empty or consist only of whitespace.
      attr_accessor :value


      #
      # Mapper for NamedValueUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NamedValueUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'NamedValueUpdateParameters',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tags',
                constraints: {
                  MaxItems: 32
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.secret',
                type: {
                  name: 'Boolean'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1,
                  Pattern: '^[A-Za-z0-9-._]+$'
                },
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.value',
                constraints: {
                  MaxLength: 4096,
                  MinLength: 1
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
