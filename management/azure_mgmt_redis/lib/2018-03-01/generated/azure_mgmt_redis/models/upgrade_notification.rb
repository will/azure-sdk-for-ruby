# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2018_03_01
  module Models
    #
    # Properties of upgrade notification.
    #
    class UpgradeNotification

      include MsRestAzure

      # @return [String] Name of upgrade notification.
      attr_accessor :name

      # @return [DateTime] Timestamp when upgrade notification occurred.
      attr_accessor :timestamp

      # @return [Hash{String => String}] Details about this upgrade
      # notification
      attr_accessor :upsell_notification


      #
      # Mapper for UpgradeNotification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpgradeNotification',
          type: {
            name: 'Composite',
            class_name: 'UpgradeNotification',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              upsell_notification: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'upsellNotification',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
