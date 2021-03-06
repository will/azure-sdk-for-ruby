# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_04_01
  module Models
    #
    # The properties for updating the platform configuration.
    #
    class PlatformUpdateParameters

      include MsRestAzure

      # @return [OS] The operating system type required for the run. Possible
      # values include: 'Windows', 'Linux'
      attr_accessor :os

      # @return [Architecture] The OS architecture. Possible values include:
      # 'amd64', 'x86', 'arm'
      attr_accessor :architecture

      # @return [Variant] Variant of the CPU. Possible values include: 'v6',
      # 'v7', 'v8'
      attr_accessor :variant


      #
      # Mapper for PlatformUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PlatformUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'PlatformUpdateParameters',
            model_properties: {
              os: {
                client_side_validation: true,
                required: false,
                serialized_name: 'os',
                type: {
                  name: 'String'
                }
              },
              architecture: {
                client_side_validation: true,
                required: false,
                serialized_name: 'architecture',
                type: {
                  name: 'String'
                }
              },
              variant: {
                client_side_validation: true,
                required: false,
                serialized_name: 'variant',
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
