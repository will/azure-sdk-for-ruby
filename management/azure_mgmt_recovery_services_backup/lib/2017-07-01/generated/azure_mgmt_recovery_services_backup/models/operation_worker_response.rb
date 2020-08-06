# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # This is the base class for operation result responses.
    #
    class OperationWorkerResponse

      include MsRestAzure

      # @return [HttpStatusCode] HTTP Status Code of the operation. Possible
      # values include: 'Continue', 'SwitchingProtocols', 'OK', 'Created',
      # 'Accepted', 'NonAuthoritativeInformation', 'NoContent', 'ResetContent',
      # 'PartialContent', 'MultipleChoices', 'Ambiguous', 'MovedPermanently',
      # 'Moved', 'Found', 'Redirect', 'SeeOther', 'RedirectMethod',
      # 'NotModified', 'UseProxy', 'Unused', 'TemporaryRedirect',
      # 'RedirectKeepVerb', 'BadRequest', 'Unauthorized', 'PaymentRequired',
      # 'Forbidden', 'NotFound', 'MethodNotAllowed', 'NotAcceptable',
      # 'ProxyAuthenticationRequired', 'RequestTimeout', 'Conflict', 'Gone',
      # 'LengthRequired', 'PreconditionFailed', 'RequestEntityTooLarge',
      # 'RequestUriTooLong', 'UnsupportedMediaType',
      # 'RequestedRangeNotSatisfiable', 'ExpectationFailed', 'UpgradeRequired',
      # 'InternalServerError', 'NotImplemented', 'BadGateway',
      # 'ServiceUnavailable', 'GatewayTimeout', 'HttpVersionNotSupported'
      attr_accessor :status_code

      # @return [Hash{String => Array<String>}] HTTP headers associated with
      # this operation.
      attr_accessor :headers


      #
      # Mapper for OperationWorkerResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationWorkerResponse',
          type: {
            name: 'Composite',
            class_name: 'OperationWorkerResponse',
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
                serialized_name: 'headers',
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
              }
            }
          }
        }
      end
    end
  end
end
