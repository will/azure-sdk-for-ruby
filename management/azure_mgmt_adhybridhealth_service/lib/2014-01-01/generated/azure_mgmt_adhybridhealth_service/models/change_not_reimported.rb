# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The changes which are not re-imported.
    #
    class ChangeNotReimported

      include MsRestAzure

      # @return [ChangeNotReimportedDelta] The delta changes that is not
      # re-imported.
      attr_accessor :delta

      # @return [ChangeNotReimportedEntry] The object entry in a change that is
      # not re-imported.
      attr_accessor :entry


      #
      # Mapper for ChangeNotReimported class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChangeNotReimported',
          type: {
            name: 'Composite',
            class_name: 'ChangeNotReimported',
            model_properties: {
              delta: {
                client_side_validation: true,
                required: false,
                serialized_name: 'delta',
                type: {
                  name: 'Composite',
                  class_name: 'ChangeNotReimportedDelta'
                }
              },
              entry: {
                client_side_validation: true,
                required: false,
                serialized_name: 'entry',
                type: {
                  name: 'Composite',
                  class_name: 'ChangeNotReimportedEntry'
                }
              }
            }
          }
        }
      end
    end
  end
end
