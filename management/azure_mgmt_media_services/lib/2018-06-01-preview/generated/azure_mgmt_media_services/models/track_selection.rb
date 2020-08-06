# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Class to select a track
    #
    class TrackSelection

      include MsRestAzure

      # @return [Array<TrackPropertyCondition>] TrackSelections is a track
      # property condition list which can specify track(s)
      attr_accessor :track_selections


      #
      # Mapper for TrackSelection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TrackSelection',
          type: {
            name: 'Composite',
            class_name: 'TrackSelection',
            model_properties: {
              track_selections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'trackSelections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TrackPropertyConditionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrackPropertyCondition'
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
