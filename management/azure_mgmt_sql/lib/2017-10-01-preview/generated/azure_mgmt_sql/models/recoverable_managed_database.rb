# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  module Models
    #
    # A recoverable managed database resource.
    #
    class RecoverableManagedDatabase < ProxyResource

      include MsRestAzure

      # @return [String] The last available backup date.
      attr_accessor :last_available_backup_date


      #
      # Mapper for RecoverableManagedDatabase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecoverableManagedDatabase',
          type: {
            name: 'Composite',
            class_name: 'RecoverableManagedDatabase',
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
              last_available_backup_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastAvailableBackupDate',
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
