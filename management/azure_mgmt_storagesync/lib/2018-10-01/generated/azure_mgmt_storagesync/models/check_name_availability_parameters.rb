# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_10_01
  module Models
    #
    # Parameters for a check name availability request.
    #
    class CheckNameAvailabilityParameters

      include MsRestAzure

      # @return [String] The name to check for availability
      attr_accessor :name

      # @return [String] The resource type. Must be set to
      # Microsoft.StorageSync/storageSyncServices. Default value:
      # 'Microsoft.StorageSync/storageSyncServices' .
      attr_accessor :type


      #
      # Mapper for CheckNameAvailabilityParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityParameters',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Microsoft.StorageSync/storageSyncServices',
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
