# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2016_03_30
  module Models
    #
    # Profile for Windows VMs in the container service cluster.
    #
    class ContainerServiceWindowsProfile

      include MsRestAzure

      # @return [String] The administrator username to use for Windows VMs
      attr_accessor :admin_username

      # @return [String] The administrator password to use for Windows VMs
      attr_accessor :admin_password


      #
      # Mapper for ContainerServiceWindowsProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerServiceWindowsProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceWindowsProfile',
            model_properties: {
              admin_username: {
                client_side_validation: true,
                required: true,
                serialized_name: 'adminUsername',
                type: {
                  name: 'String'
                }
              },
              admin_password: {
                client_side_validation: true,
                required: true,
                serialized_name: 'adminPassword',
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
