# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MariaDB::Mgmt::V2018_06_01
  module Models
    #
    # The properties used to create a new server.
    #
    class ServerPropertiesForCreate

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Default"] = "ServerPropertiesForDefaultCreate"
      @@discriminatorMap["PointInTimeRestore"] = "ServerPropertiesForRestore"
      @@discriminatorMap["GeoRestore"] = "ServerPropertiesForGeoRestore"
      @@discriminatorMap["Replica"] = "ServerPropertiesForReplica"

      def initialize
        @createMode = "ServerPropertiesForCreate"
      end

      attr_accessor :createMode

      # @return [ServerVersion] Server version. Possible values include: '5.6',
      # '5.7'
      attr_accessor :version

      # @return [SslEnforcementEnum] Enable ssl enforcement or not when connect
      # to server. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :ssl_enforcement

      # @return [StorageProfile] Storage profile of a server.
      attr_accessor :storage_profile


      #
      # Mapper for ServerPropertiesForCreate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerPropertiesForCreate',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'createMode',
            uber_parent: 'ServerPropertiesForCreate',
            class_name: 'ServerPropertiesForCreate',
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
              }
            }
          }
        }
      end
    end
  end
end
