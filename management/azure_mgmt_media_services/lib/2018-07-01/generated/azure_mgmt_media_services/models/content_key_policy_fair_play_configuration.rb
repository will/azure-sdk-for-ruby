# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Specifies a configuration for FairPlay licenses.
    #
    class ContentKeyPolicyFairPlayConfiguration < ContentKeyPolicyConfiguration

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ContentKeyPolicyFairPlayConfiguration"
      end

      attr_accessor :odatatype

      # @return [Array<Integer>] The key that must be used as FairPlay
      # Application Secret key.
      attr_accessor :ask

      # @return [String] The password encrypting FairPlay certificate in PKCS
      # 12 (pfx) format.
      attr_accessor :fair_play_pfx_password

      # @return [String] The Base64 representation of FairPlay certificate in
      # PKCS 12 (pfx) format (including private key).
      attr_accessor :fair_play_pfx

      # @return [ContentKeyPolicyFairPlayRentalAndLeaseKeyType] The rental and
      # lease key type. Possible values include: 'Unknown', 'Undefined',
      # 'DualExpiry', 'PersistentUnlimited', 'PersistentLimited'
      attr_accessor :rental_and_lease_key_type

      # @return [Integer] The rental duration. Must be greater than or equal to
      # 0.
      attr_accessor :rental_duration

      # @return [ContentKeyPolicyFairPlayOfflineRentalConfiguration] Offline
      # rental policy
      attr_accessor :offline_rental_configuration


      #
      # Mapper for ContentKeyPolicyFairPlayConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicyFairPlayConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyFairPlayConfiguration',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              ask: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ask',
                type: {
                  name: 'ByteArray'
                }
              },
              fair_play_pfx_password: {
                client_side_validation: true,
                required: true,
                serialized_name: 'fairPlayPfxPassword',
                type: {
                  name: 'String'
                }
              },
              fair_play_pfx: {
                client_side_validation: true,
                required: true,
                serialized_name: 'fairPlayPfx',
                type: {
                  name: 'String'
                }
              },
              rental_and_lease_key_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rentalAndLeaseKeyType',
                type: {
                  name: 'String'
                }
              },
              rental_duration: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rentalDuration',
                type: {
                  name: 'Number'
                }
              },
              offline_rental_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'offlineRentalConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'ContentKeyPolicyFairPlayOfflineRentalConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
