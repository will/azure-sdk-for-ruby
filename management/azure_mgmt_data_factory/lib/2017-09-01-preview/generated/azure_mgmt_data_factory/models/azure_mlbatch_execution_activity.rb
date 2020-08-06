# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Azure ML Batch Execution activity.
    #
    class AzureMLBatchExecutionActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "AzureMLBatchExecution"
      end

      attr_accessor :type

      # @return Key,Value pairs to be passed to the Azure ML Batch Execution
      # Service endpoint. Keys must match the names of web service parameters
      # defined in the published Azure ML web service. Values will be passed in
      # the GlobalParameters property of the Azure ML batch execution request.
      attr_accessor :global_parameters

      # @return [Hash{String => AzureMLWebServiceFile}] Key,Value pairs,
      # mapping the names of Azure ML endpoint's Web Service Outputs to
      # AzureMLWebServiceFile objects specifying the output Blob locations.
      # This information will be passed in the WebServiceOutputs property of
      # the Azure ML batch execution request.
      attr_accessor :web_service_outputs

      # @return [Hash{String => AzureMLWebServiceFile}] Key,Value pairs,
      # mapping the names of Azure ML endpoint's Web Service Inputs to
      # AzureMLWebServiceFile objects specifying the input Blob locations..
      # This information will be passed in the WebServiceInputs property of the
      # Azure ML batch execution request.
      attr_accessor :web_service_inputs


      #
      # Mapper for AzureMLBatchExecutionActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureMLBatchExecution',
          type: {
            name: 'Composite',
            class_name: 'AzureMLBatchExecutionActivity',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
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
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityPolicy'
                }
              },
              global_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.globalParameters',
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
              web_service_outputs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.webServiceOutputs',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureMLWebServiceFileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureMLWebServiceFile'
                      }
                  }
                }
              },
              web_service_inputs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.webServiceInputs',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureMLWebServiceFileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureMLWebServiceFile'
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
