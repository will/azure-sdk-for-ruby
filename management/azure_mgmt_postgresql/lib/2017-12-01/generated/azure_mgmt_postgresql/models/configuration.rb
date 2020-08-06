# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Postgresql::Mgmt::V2017_12_01
  module Models
    #
    # Represents a Configuration.
    #
    class Configuration < ProxyResource

      include MsRestAzure

      # @return [String] Value of the configuration.
      attr_accessor :value

      # @return [String] Description of the configuration.
      attr_accessor :description

      # @return [String] Default value of the configuration.
      attr_accessor :default_value

      # @return [String] Data type of the configuration.
      attr_accessor :data_type

      # @return [String] Allowed values of the configuration.
      attr_accessor :allowed_values

      # @return [String] Source of the configuration.
      attr_accessor :source


      #
      # Mapper for Configuration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Configuration',
          type: {
            name: 'Composite',
            class_name: 'Configuration',
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
                required: false,
                serialized_name: 'properties.value',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              default_value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultValue',
                type: {
                  name: 'String'
                }
              },
              data_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.dataType',
                type: {
                  name: 'String'
                }
              },
              allowed_values: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.allowedValues',
                type: {
                  name: 'String'
                }
              },
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.source',
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
