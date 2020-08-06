# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  module Models
    #
    # Describes how the service is partitioned.
    #
    class PartitionSchemeDescription

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Named"] = "NamedPartitionSchemeDescription"
      @@discriminatorMap["Singleton"] = "SingletonPartitionSchemeDescription"
      @@discriminatorMap["UniformInt64Range"] = "UniformInt64RangePartitionSchemeDescription"

      def initialize
        @PartitionScheme = "PartitionSchemeDescription"
      end

      attr_accessor :PartitionScheme


      #
      # Mapper for PartitionSchemeDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionSchemeDescription',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'PartitionScheme',
            uber_parent: 'PartitionSchemeDescription',
            class_name: 'PartitionSchemeDescription',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
