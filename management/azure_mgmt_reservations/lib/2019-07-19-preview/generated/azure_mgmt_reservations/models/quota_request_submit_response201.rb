# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_07_19_preview
  module Models
    #
    # The quota request submit response with request id.
    #
    class QuotaRequestSubmitResponse201

      include MsRestAzure

      # @return [String] The quota request id. Please use the requestId to
      # check the request status.
      attr_accessor :id

      # @return [String] The operation Id
      attr_accessor :name

      # @return [String] The resource type
      attr_accessor :type

      # @return The quota request status.
      attr_accessor :provisioning_state

      # @return [String] A user friendly message.
      attr_accessor :message


      #
      # Mapper for QuotaRequestSubmitResponse201 class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QuotaRequestSubmitResponse201',
          type: {
            name: 'Composite',
            class_name: 'QuotaRequestSubmitResponse201',
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
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Object'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.message',
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
