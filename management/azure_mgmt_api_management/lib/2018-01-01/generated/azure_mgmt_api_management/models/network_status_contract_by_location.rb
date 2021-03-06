# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # Network Status in the Location
    #
    class NetworkStatusContractByLocation

      include MsRestAzure

      # @return [String] Location of service
      attr_accessor :location

      # @return [NetworkStatusContract] Network status in Location
      attr_accessor :network_status


      #
      # Mapper for NetworkStatusContractByLocation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkStatusContractByLocation',
          type: {
            name: 'Composite',
            class_name: 'NetworkStatusContractByLocation',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              network_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkStatus',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkStatusContract'
                }
              }
            }
          }
        }
      end
    end
  end
end
