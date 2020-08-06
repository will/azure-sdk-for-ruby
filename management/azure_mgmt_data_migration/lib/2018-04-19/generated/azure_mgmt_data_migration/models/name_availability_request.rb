# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # A resource type and proposed name
    #
    class NameAvailabilityRequest

      include MsRestAzure

      # @return [String] The proposed resource name
      attr_accessor :name

      # @return [String] The resource type chain (e.g.
      # virtualMachines/extensions)
      attr_accessor :type


      #
      # Mapper for NameAvailabilityRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NameAvailabilityRequest',
          type: {
            name: 'Composite',
            class_name: 'NameAvailabilityRequest',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
