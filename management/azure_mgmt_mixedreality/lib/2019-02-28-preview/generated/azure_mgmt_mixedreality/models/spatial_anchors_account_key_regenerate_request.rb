# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MixedReality::Mgmt::V2019_02_28_preview
  module Models
    #
    # Spatial Anchors Account Regenerate Key
    #
    class SpatialAnchorsAccountKeyRegenerateRequest

      include MsRestAzure

      # @return [Integer] serial of key to be regenerated. Default value: 1 .
      attr_accessor :serial


      #
      # Mapper for SpatialAnchorsAccountKeyRegenerateRequest class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SpatialAnchorsAccountKeyRegenerateRequest',
          type: {
            name: 'Composite',
            class_name: 'SpatialAnchorsAccountKeyRegenerateRequest',
            model_properties: {
              serial: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serial',
                default_value: 1,
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
