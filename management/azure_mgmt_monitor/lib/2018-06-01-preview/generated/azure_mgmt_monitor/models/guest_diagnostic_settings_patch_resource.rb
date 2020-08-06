# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_06_01_preview
  module Models
    #
    # An diagnostic settings object for the body of patch operations.
    #
    class GuestDiagnosticSettingsPatchResource

      include MsRestAzure

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [Enum] Operating system type for the configuration. Possible
      # values include: 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [Array<DataSource>] the array of data source object which are
      # configured to collect and send data
      attr_accessor :data_sources

      # @return [String]
      attr_accessor :proxy_setting


      #
      # Mapper for GuestDiagnosticSettingsPatchResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GuestDiagnosticSettingsPatchResource',
          type: {
            name: 'Composite',
            class_name: 'GuestDiagnosticSettingsPatchResource',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              os_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.osType',
                type: {
                  name: 'String'
                }
              },
              data_sources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataSources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataSourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataSource'
                      }
                  }
                }
              },
              proxy_setting: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.proxySetting',
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
