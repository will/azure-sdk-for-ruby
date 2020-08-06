# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_09_07
  module Models
    #
    # Azure capacity definition.
    #
    class AzureCapacity

      include MsRestAzure

      # @return [AzureScaleType] Scale type. Possible values include:
      # 'automatic', 'manual', 'none'
      attr_accessor :scale_type

      # @return [Integer] Minimum allowed capacity.
      attr_accessor :minimum

      # @return [Integer] Maximum allowed capacity.
      attr_accessor :maximum

      # @return [Integer] The default capacity that would be used.
      attr_accessor :default


      #
      # Mapper for AzureCapacity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureCapacity',
          type: {
            name: 'Composite',
            class_name: 'AzureCapacity',
            model_properties: {
              scale_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'scaleType',
                type: {
                  name: 'String'
                }
              },
              minimum: {
                client_side_validation: true,
                required: true,
                serialized_name: 'minimum',
                type: {
                  name: 'Number'
                }
              },
              maximum: {
                client_side_validation: true,
                required: true,
                serialized_name: 'maximum',
                type: {
                  name: 'Number'
                }
              },
              default: {
                client_side_validation: true,
                required: true,
                serialized_name: 'default',
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
