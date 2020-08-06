# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Mysql::Mgmt::V2017_12_01_preview
  module Models
    #
    # The properties to create a new replica.
    #
    class ServerPropertiesForReplica < ServerPropertiesForCreate

      include MsRestAzure


      def initialize
        @createMode = "Replica"
      end

      attr_accessor :createMode

      # @return [String] The master server id to create replica from.
      attr_accessor :source_server_id


      #
      # Mapper for ServerPropertiesForReplica class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Replica',
          type: {
            name: 'Composite',
            class_name: 'ServerPropertiesForReplica',
            model_properties: {
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              },
              ssl_enforcement: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sslEnforcement',
                type: {
                  name: 'Enum',
                  module: 'SslEnforcementEnum'
                }
              },
              storage_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'StorageProfile'
                }
              },
              createMode: {
                client_side_validation: true,
                required: true,
                serialized_name: 'createMode',
                type: {
                  name: 'String'
                }
              },
              source_server_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceServerId',
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
