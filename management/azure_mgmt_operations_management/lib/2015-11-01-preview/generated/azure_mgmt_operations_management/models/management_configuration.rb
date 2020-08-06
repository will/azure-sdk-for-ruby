# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationsManagement::Mgmt::V2015_11_01_preview
  module Models
    #
    # The container for solution.
    #
    class ManagementConfiguration

      include MsRestAzure

      # @return [String] Resource ID.
      attr_accessor :id

      # @return [String] Resource name.
      attr_accessor :name

      # @return [String] Resource type.
      attr_accessor :type

      # @return [String] Resource location
      attr_accessor :location

      # @return [ManagementConfigurationProperties] Properties for
      # ManagementConfiguration object supported by the OperationsManagement
      # resource provider.
      attr_accessor :properties


      #
      # Mapper for ManagementConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ManagementConfiguration',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
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
                  class_name: 'ManagementConfigurationProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
