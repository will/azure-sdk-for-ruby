# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_04_01
  module Models
    #
    # Properties used to create a user account on a Windows node.
    #
    #
    class WindowsUserConfiguration

      include MsRestAzure

      # @return [LoginMode] Login mode for user. Specifies login mode for the
      # user. The default value for VirtualMachineConfiguration pools is
      # interactive mode and for CloudServiceConfiguration pools is batch mode.
      # Possible values include: 'Batch', 'Interactive'
      attr_accessor :login_mode


      #
      # Mapper for WindowsUserConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WindowsUserConfiguration',
          type: {
            name: 'Composite',
            class_name: 'WindowsUserConfiguration',
            model_properties: {
              login_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'loginMode',
                type: {
                  name: 'Enum',
                  module: 'LoginMode'
                }
              }
            }
          }
        }
      end
    end
  end
end
