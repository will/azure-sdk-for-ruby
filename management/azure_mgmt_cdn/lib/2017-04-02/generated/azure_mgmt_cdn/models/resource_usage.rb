# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_04_02
  module Models
    #
    # Output of check resource usage API.
    #
    class ResourceUsage

      include MsRestAzure

      # @return [String] Resource type for which the usage is provided.
      attr_accessor :resource_type

      # @return [String] Unit of the usage. e.g. Count.
      attr_accessor :unit

      # @return [Integer] Actual value of usage on the specified resource type.
      attr_accessor :current_value

      # @return [Integer] Quota of the specified resource type.
      attr_accessor :limit


      #
      # Mapper for ResourceUsage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceUsage',
          type: {
            name: 'Composite',
            class_name: 'ResourceUsage',
            model_properties: {
              resource_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              current_value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'currentValue',
                type: {
                  name: 'Number'
                }
              },
              limit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
