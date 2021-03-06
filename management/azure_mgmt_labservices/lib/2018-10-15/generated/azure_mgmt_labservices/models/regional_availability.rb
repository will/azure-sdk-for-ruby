# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # The availability information of sizes across regions
    #
    class RegionalAvailability

      include MsRestAzure

      # @return [String] Corresponding region
      attr_accessor :region

      # @return [Array<SizeAvailability>] List of all the size information for
      # the region
      attr_accessor :size_availabilities


      #
      # Mapper for RegionalAvailability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegionalAvailability',
          type: {
            name: 'Composite',
            class_name: 'RegionalAvailability',
            model_properties: {
              region: {
                client_side_validation: true,
                required: false,
                serialized_name: 'region',
                type: {
                  name: 'String'
                }
              },
              size_availabilities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sizeAvailabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SizeAvailabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SizeAvailability'
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
