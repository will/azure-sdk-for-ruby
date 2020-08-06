# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Data flow debug settings.
    #
    class DataFlowDebugPackageDebugSettings

      include MsRestAzure

      # @return [Array<DataFlowSourceSetting>] Source setting for data flow
      # debug.
      attr_accessor :source_settings

      # @return Data flow parameters.
      attr_accessor :parameters

      # @return Parameters for dataset.
      attr_accessor :dataset_parameters


      #
      # Mapper for DataFlowDebugPackageDebugSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataFlowDebugPackage_debugSettings',
          type: {
            name: 'Composite',
            class_name: 'DataFlowDebugPackageDebugSettings',
            model_properties: {
              source_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceSettings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataFlowSourceSettingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataFlowSourceSetting'
                      }
                  }
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              dataset_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'datasetParameters',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
