# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_04_01
  module Models
    #
    # The resource model definition for a ARM proxy resource. It will have
    # everything other than required location and tags
    #
    class ARMProxyResource

      include MsRestAzure

      # @return [String] The unique resource identifier of the database
      # account.
      attr_accessor :id

      # @return [String] The name of the database account.
      attr_accessor :name

      # @return [String] The type of Azure resource.
      attr_accessor :type


      #
      # Mapper for ARMProxyResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ARMProxyResource',
          type: {
            name: 'Composite',
            class_name: 'ARMProxyResource',
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
              }
            }
          }
        }
      end
    end
  end
end
