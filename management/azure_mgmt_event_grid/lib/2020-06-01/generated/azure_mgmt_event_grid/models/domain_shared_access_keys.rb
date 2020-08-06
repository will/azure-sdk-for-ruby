# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_06_01
  module Models
    #
    # Shared access keys of the Domain.
    #
    class DomainSharedAccessKeys

      include MsRestAzure

      # @return [String] Shared access key1 for the domain.
      attr_accessor :key1

      # @return [String] Shared access key2 for the domain.
      attr_accessor :key2


      #
      # Mapper for DomainSharedAccessKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DomainSharedAccessKeys',
          type: {
            name: 'Composite',
            class_name: 'DomainSharedAccessKeys',
            model_properties: {
              key1: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key1',
                type: {
                  name: 'String'
                }
              },
              key2: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key2',
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
