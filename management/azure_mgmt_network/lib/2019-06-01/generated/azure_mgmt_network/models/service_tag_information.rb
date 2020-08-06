# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # The service tag information.
    #
    class ServiceTagInformation

      include MsRestAzure

      # @return [ServiceTagInformationPropertiesFormat] Properties of the
      # service tag information.
      attr_accessor :properties

      # @return [String] The name of service tag.
      attr_accessor :name

      # @return [String] The ID of service tag.
      attr_accessor :id


      #
      # Mapper for ServiceTagInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceTagInformation',
          type: {
            name: 'Composite',
            class_name: 'ServiceTagInformation',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceTagInformationPropertiesFormat'
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
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
