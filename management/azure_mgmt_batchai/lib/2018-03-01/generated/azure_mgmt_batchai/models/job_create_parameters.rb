# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Parameters supplied to the Create operation.
    #
    class JobCreateParameters

      include MsRestAzure

      # @return [String] The region in which to create the job.
      attr_accessor :location

      # @return [Hash{String => String}] The user specified tags associated
      # with the job.
      attr_accessor :tags

      # @return [String] Describe the experiment information of the job
      attr_accessor :experiment_name

      # @return [Integer] Priority associated with the job. Priority associated
      # with the job. Priority values can range from -1000 to 1000, with -1000
      # being the lowest priority and 1000 being the highest priority. The
      # default value is 0. Default value: 0 .
      attr_accessor :priority

      # @return [ResourceId] Specifies the Id of the cluster on which this job
      # will run.
      attr_accessor :cluster

      # @return [MountVolumes] Information on mount volumes to be used by the
      # job. These volumes will be mounted before the job execution and will be
      # unmounted after the job completion. The volumes will be mounted at
      # location specified by $AZ_BATCHAI_JOB_MOUNT_ROOT environment variable.
      attr_accessor :mount_volumes

      # @return [Integer] Number of compute nodes to run the job on. The job
      # will be gang scheduled on that many compute nodes
      attr_accessor :node_count

      # @return [ContainerSettings] If provided the job will run in the
      # specified container. If the container was downloaded as part of cluster
      # setup then the same container image will be used. If not provided, the
      # job will run on the VM.
      attr_accessor :container_settings

      # @return [CNTKsettings] Specifies the settings for CNTK (aka Microsoft
      # Cognitive Toolkit) job.
      attr_accessor :cntk_settings

      # @return [PyTorchSettings] Specifies the settings for pyTorch job.
      attr_accessor :py_torch_settings

      # @return [TensorFlowSettings] Specifies the settings for Tensor Flow
      # job.
      attr_accessor :tensor_flow_settings

      # @return [CaffeSettings] Specifies the settings for Caffe job.
      attr_accessor :caffe_settings

      # @return [Caffe2Settings] Specifies the settings for Caffe2 job.
      attr_accessor :caffe2settings

      # @return [ChainerSettings] Specifies the settings for Chainer job.
      attr_accessor :chainer_settings

      # @return [CustomToolkitSettings] Specifies the settings for custom tool
      # kit job.
      attr_accessor :custom_toolkit_settings

      # @return [JobPreparation] Specifies the command line to be executed
      # before tool kit is launched. The specified actions will run on all the
      # nodes that are part of the job
      attr_accessor :job_preparation

      # @return [String] The path where the Batch AI service will upload stdout
      # and stderror of the job.
      attr_accessor :std_out_err_path_prefix

      # @return [Array<InputDirectory>] Specifies the list of input directories
      # for the Job.
      attr_accessor :input_directories

      # @return [Array<OutputDirectory>] Specifies the list of output
      # directories.
      attr_accessor :output_directories

      # @return [Array<EnvironmentVariable>] Additional environment variables
      # to set on the job. Batch AI will setup these additional environment
      # variables for the job.
      attr_accessor :environment_variables

      # @return [Array<EnvironmentVariableWithSecretValue>] Additional
      # environment variables with secret values to set on the job. Batch AI
      # will setup these additional environment variables for the job. Server
      # will never report values of these variables back.
      attr_accessor :secrets

      # @return [JobBasePropertiesConstraints] Constraints associated with the
      # Job.
      attr_accessor :constraints


      #
      # Mapper for JobCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'JobCreateParameters',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              experiment_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.experimentName',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.priority',
                default_value: 0,
                type: {
                  name: 'Number'
                }
              },
              cluster: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.cluster',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceId'
                }
              },
              mount_volumes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.mountVolumes',
                type: {
                  name: 'Composite',
                  class_name: 'MountVolumes'
                }
              },
              node_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.nodeCount',
                type: {
                  name: 'Number'
                }
              },
              container_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.containerSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerSettings'
                }
              },
              cntk_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cntkSettings',
                type: {
                  name: 'Composite',
                  class_name: 'CNTKsettings'
                }
              },
              py_torch_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.pyTorchSettings',
                type: {
                  name: 'Composite',
                  class_name: 'PyTorchSettings'
                }
              },
              tensor_flow_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tensorFlowSettings',
                type: {
                  name: 'Composite',
                  class_name: 'TensorFlowSettings'
                }
              },
              caffe_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.caffeSettings',
                type: {
                  name: 'Composite',
                  class_name: 'CaffeSettings'
                }
              },
              caffe2settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.caffe2Settings',
                type: {
                  name: 'Composite',
                  class_name: 'Caffe2Settings'
                }
              },
              chainer_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.chainerSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ChainerSettings'
                }
              },
              custom_toolkit_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customToolkitSettings',
                type: {
                  name: 'Composite',
                  class_name: 'CustomToolkitSettings'
                }
              },
              job_preparation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.jobPreparation',
                type: {
                  name: 'Composite',
                  class_name: 'JobPreparation'
                }
              },
              std_out_err_path_prefix: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.stdOutErrPathPrefix',
                type: {
                  name: 'String'
                }
              },
              input_directories: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.inputDirectories',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InputDirectoryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InputDirectory'
                      }
                  }
                }
              },
              output_directories: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.outputDirectories',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OutputDirectoryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OutputDirectory'
                      }
                  }
                }
              },
              environment_variables: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.environmentVariables',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EnvironmentVariableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EnvironmentVariable'
                      }
                  }
                }
              },
              secrets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.secrets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EnvironmentVariableWithSecretValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EnvironmentVariableWithSecretValue'
                      }
                  }
                }
              },
              constraints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.constraints',
                type: {
                  name: 'Composite',
                  class_name: 'JobBasePropertiesConstraints'
                }
              }
            }
          }
        }
      end
    end
  end
end
