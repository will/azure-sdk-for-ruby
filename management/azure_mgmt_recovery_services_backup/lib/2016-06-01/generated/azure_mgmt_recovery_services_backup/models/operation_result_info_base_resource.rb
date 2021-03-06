# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # Base class for operation result information.
    #
    class OperationResultInfoBaseResource < OperationWorkerResponse

      include MsRestAzure

      # @return [OperationResultInfoBase]
      attr_accessor :properties


      #
      # Mapper for OperationResultInfoBaseResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationResultInfoBaseResource',
          type: {
            name: 'Composite',
            class_name: 'OperationResultInfoBaseResource',
            model_properties: {
              status_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statusCode',
                type: {
                  name: 'Enum',
                  module: 'HttpStatusCode'
                }
              },
              headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Headers',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
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
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'objectType',
                  uber_parent: 'OperationResultInfoBase',
                  class_name: 'OperationResultInfoBase'
                }
              }
            }
          }
        }
      end
    end
  end
end
