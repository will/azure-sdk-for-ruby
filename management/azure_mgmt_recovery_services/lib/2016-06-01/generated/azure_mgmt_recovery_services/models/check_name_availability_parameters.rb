# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServices::Mgmt::V2016_06_01
  module Models
    #
    # Resource Name availability input parameters - Resource type and resource
    # name
    #
    class CheckNameAvailabilityParameters

      include MsRestAzure

      # @return [String] Describes the Resource type:
      # Microsoft.RecoveryServices/Vaults
      attr_accessor :type

      # @return [String] Resource name for which availability needs to be
      # checked
      attr_accessor :name


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
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
