# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Represents applicable recovery vm sizes.
    #
    class TargetComputeSize

      include MsRestAzure

      # @return [String] The Id.
      attr_accessor :id

      # @return [String] The name.
      attr_accessor :name

      # @return [String] The Type of the object.
      attr_accessor :type

      # @return [TargetComputeSizeProperties] The custom data.
      attr_accessor :properties


      #
      # Mapper for TargetComputeSize class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TargetComputeSize',
          type: {
            name: 'Composite',
            class_name: 'TargetComputeSize',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'TargetComputeSizeProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
