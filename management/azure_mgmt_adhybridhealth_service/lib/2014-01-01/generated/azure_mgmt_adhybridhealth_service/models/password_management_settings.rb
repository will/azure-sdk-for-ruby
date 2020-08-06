# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The password management settings.
    #
    class PasswordManagementSettings

      include MsRestAzure

      # @return [Boolean] Indicates if the password extension is enabled.
      attr_accessor :enabled

      # @return [String] The file path of the password management extension.
      attr_accessor :extension_file_path

      # @return [String] Connection point of password management.
      attr_accessor :connect_to

      # @return [Integer] Connection timeout for password extension.
      attr_accessor :connection_timeout

      # @return [String] User to execute password extension.
      attr_accessor :user

      # @return [PasswordOperationTypes] The supported password operations.
      # Possible values include: 'Undefined', 'Set', 'Change'
      attr_accessor :supported_password_operations

      # @return [Integer] The maximum number of retries.
      attr_accessor :maximum_retry_count

      # @return [Integer] The time between retries.
      attr_accessor :retry_interval_in_seconds

      # @return [Boolean] Indicates if a secure connection is required for
      # password management.
      attr_accessor :requires_secure_connection

      # @return [Boolean] Indicates if accounts should be unlocked when
      # resetting password.
      attr_accessor :unlock_account


      #
      # Mapper for PasswordManagementSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PasswordManagementSettings',
          type: {
            name: 'Composite',
            class_name: 'PasswordManagementSettings',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              extension_file_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extensionFilePath',
                type: {
                  name: 'String'
                }
              },
              connect_to: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectTo',
                type: {
                  name: 'String'
                }
              },
              connection_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectionTimeout',
                type: {
                  name: 'Number'
                }
              },
              user: {
                client_side_validation: true,
                required: false,
                serialized_name: 'user',
                type: {
                  name: 'String'
                }
              },
              supported_password_operations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'supportedPasswordOperations',
                type: {
                  name: 'String'
                }
              },
              maximum_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maximumRetryCount',
                type: {
                  name: 'Number'
                }
              },
              retry_interval_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retryIntervalInSeconds',
                type: {
                  name: 'Number'
                }
              },
              requires_secure_connection: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requiresSecureConnection',
                type: {
                  name: 'Boolean'
                }
              },
              unlock_account: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unlockAccount',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
