# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2017_01_19
  module Models
    #
    # The properties of an IoT hub shared access policy.
    #
    class SharedAccessSignatureAuthorizationRule

      include MsRestAzure

      # @return [String] The name of the shared access policy.
      attr_accessor :key_name

      # @return [String] The primary key.
      attr_accessor :primary_key

      # @return [String] The secondary key.
      attr_accessor :secondary_key

      # @return [AccessRights] The permissions assigned to the shared access
      # policy. Possible values include: 'RegistryRead', 'RegistryWrite',
      # 'ServiceConnect', 'DeviceConnect', 'RegistryRead, RegistryWrite',
      # 'RegistryRead, ServiceConnect', 'RegistryRead, DeviceConnect',
      # 'RegistryWrite, ServiceConnect', 'RegistryWrite, DeviceConnect',
      # 'ServiceConnect, DeviceConnect', 'RegistryRead, RegistryWrite,
      # ServiceConnect', 'RegistryRead, RegistryWrite, DeviceConnect',
      # 'RegistryRead, ServiceConnect, DeviceConnect', 'RegistryWrite,
      # ServiceConnect, DeviceConnect', 'RegistryRead, RegistryWrite,
      # ServiceConnect, DeviceConnect'
      attr_accessor :rights


      #
      # Mapper for SharedAccessSignatureAuthorizationRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SharedAccessSignatureAuthorizationRule',
          type: {
            name: 'Composite',
            class_name: 'SharedAccessSignatureAuthorizationRule',
            model_properties: {
              key_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyName',
                type: {
                  name: 'String'
                }
              },
              primary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondaryKey',
                type: {
                  name: 'String'
                }
              },
              rights: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rights',
                type: {
                  name: 'Enum',
                  module: 'AccessRights'
                }
              }
            }
          }
        }
      end
    end
  end
end
