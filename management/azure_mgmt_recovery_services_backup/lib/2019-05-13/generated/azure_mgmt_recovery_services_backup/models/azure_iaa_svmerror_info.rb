# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Azure IaaS VM workload-specific error information.
    #
    class AzureIaaSVMErrorInfo

      include MsRestAzure

      # @return [Integer] Error code.
      attr_accessor :error_code

      # @return [String] Title: Typically, the entity that the error pertains
      # to.
      attr_accessor :error_title

      # @return [String] Localized error string.
      attr_accessor :error_string

      # @return [Array<String>] List of localized recommendations for above
      # error code.
      attr_accessor :recommendations


      #
      # Mapper for AzureIaaSVMErrorInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureIaaSVMErrorInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSVMErrorInfo',
            model_properties: {
              error_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errorCode',
                type: {
                  name: 'Number'
                }
              },
              error_title: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errorTitle',
                type: {
                  name: 'String'
                }
              },
              error_string: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errorString',
                type: {
                  name: 'String'
                }
              },
              recommendations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'recommendations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
