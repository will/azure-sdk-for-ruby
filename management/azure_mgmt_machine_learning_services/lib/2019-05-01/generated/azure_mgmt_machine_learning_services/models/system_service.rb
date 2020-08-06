# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2019_05_01
  module Models
    #
    # A system service running on a compute.
    #
    class SystemService

      include MsRestAzure

      # @return [String] The type of this system service.
      attr_accessor :system_service_type

      # @return [String] Public IP address
      attr_accessor :public_ip_address

      # @return [String] The version for this type.
      attr_accessor :version


      #
      # Mapper for SystemService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SystemService',
          type: {
            name: 'Composite',
            class_name: 'SystemService',
            model_properties: {
              system_service_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'systemServiceType',
                type: {
                  name: 'String'
                }
              },
              public_ip_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'publicIpAddress',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'version',
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
