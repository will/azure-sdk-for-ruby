# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # A database geo backup policy.
    #
    class GeoBackupPolicy < ProxyResource

      include MsRestAzure

      # @return [GeoBackupPolicyState] The state of the geo backup policy.
      # Possible values include: 'Disabled', 'Enabled'
      attr_accessor :state

      # @return [String] The storage type of the geo backup policy.
      attr_accessor :storage_type

      # @return [String] Kind of geo backup policy.  This is metadata used for
      # the Azure portal experience.
      attr_accessor :kind

      # @return [String] Backup policy location.
      attr_accessor :location


      #
      # Mapper for GeoBackupPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GeoBackupPolicy',
          type: {
            name: 'Composite',
            class_name: 'GeoBackupPolicy',
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
              state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'GeoBackupPolicyState'
                }
              },
              storage_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.storageType',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
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
