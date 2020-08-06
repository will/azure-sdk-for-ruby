# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_07_19_preview
  module Models
    #
    # The sub-request submitted with the quota request.
    #
    class SubRequest

      include MsRestAzure

      # @return [Integer] The Resource limit.
      attr_accessor :limit

      # @return [ResourceName] The Resource name.
      attr_accessor :name

      # @return [String] Resource type for which the quota check was made.
      attr_accessor :resource_type

      # @return [String]  The units of the limit, such as - Count, Bytes, etc.
      # Use the unit field provided in the Get quota response.
      attr_accessor :unit

      # @return The quota request status.
      attr_accessor :provisioning_state

      # @return [String] User friendly status message.
      attr_accessor :message

      # @return [String] Sub request id for individual request.
      attr_accessor :sub_request_id


      #
      # Mapper for SubRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SubRequest',
          type: {
            name: 'Composite',
            class_name: 'SubRequest',
            model_properties: {
              limit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceName'
                }
              },
              resource_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provisioningState',
                type: {
                  name: 'Object'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              sub_request_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'subRequestId',
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
