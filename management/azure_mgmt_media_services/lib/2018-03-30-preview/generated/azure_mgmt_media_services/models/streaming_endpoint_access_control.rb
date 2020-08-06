# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # StreamingEndpoint access control definition.
    #
    class StreamingEndpointAccessControl

      include MsRestAzure

      # @return [AkamaiAccessControl] The access control of Akamai
      attr_accessor :akamai

      # @return [IPAccessControl] The IP access control of the
      # StreamingEndpoint.
      attr_accessor :ip


      #
      # Mapper for StreamingEndpointAccessControl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StreamingEndpointAccessControl',
          type: {
            name: 'Composite',
            class_name: 'StreamingEndpointAccessControl',
            model_properties: {
              akamai: {
                client_side_validation: true,
                required: false,
                serialized_name: 'akamai',
                type: {
                  name: 'Composite',
                  class_name: 'AkamaiAccessControl'
                }
              },
              ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ip',
                type: {
                  name: 'Composite',
                  class_name: 'IPAccessControl'
                }
              }
            }
          }
        }
      end
    end
  end
end
