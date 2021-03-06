# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Advisor::Mgmt::V2020_01_01
  module Models
    #
    # The Advisor configuration data structure.
    #
    class ConfigData < Resource

      include MsRestAzure

      # @return [Boolean] Exclude the resource from Advisor evaluations. Valid
      # values: False (default) or True.
      attr_accessor :exclude

      # @return [CpuThreshold] Minimum percentage threshold for Advisor low CPU
      # utilization evaluation. Valid only for subscriptions. Valid values: 5
      # (default), 10, 15 or 20. Possible values include: '5', '10', '15', '20'
      attr_accessor :low_cpu_threshold

      # @return [Array<DigestConfig>] Advisor digest configuration. Valid only
      # for subscriptions
      attr_accessor :digests


      #
      # Mapper for ConfigData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConfigData',
          type: {
            name: 'Composite',
            class_name: 'ConfigData',
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
              exclude: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.exclude',
                type: {
                  name: 'Boolean'
                }
              },
              low_cpu_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lowCpuThreshold',
                type: {
                  name: 'String'
                }
              },
              digests: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.digests',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DigestConfigElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DigestConfig'
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
