# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_10_01
  module Models
    #
    # Profile for Linux VMs in the container service cluster.
    #
    class ContainerServiceLinuxProfile

      include MsRestAzure

      # @return [String] The administrator username to use for Linux VMs.
      attr_accessor :admin_username

      # @return [ContainerServiceSshConfiguration] SSH configuration for
      # Linux-based VMs running on Azure.
      attr_accessor :ssh


      #
      # Mapper for ContainerServiceLinuxProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerServiceLinuxProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceLinuxProfile',
            model_properties: {
              admin_username: {
                client_side_validation: true,
                required: true,
                serialized_name: 'adminUsername',
                constraints: {
                  Pattern: '^[A-Za-z][-A-Za-z0-9_]*$'
                },
                type: {
                  name: 'String'
                }
              },
              ssh: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ssh',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceSshConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
