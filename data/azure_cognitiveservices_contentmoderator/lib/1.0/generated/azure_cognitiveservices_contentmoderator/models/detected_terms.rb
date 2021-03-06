# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Detected Terms details.
    #
    class DetectedTerms

      include MsRestAzure

      # @return [Integer] Index(Location) of the detected profanity term in the
      # input text content.
      attr_accessor :index

      # @return [Integer] Original Index(Location) of the detected profanity
      # term in the input text content.
      attr_accessor :original_index

      # @return [Integer] Matched Terms list Id.
      attr_accessor :list_id

      # @return [String] Detected profanity term.
      attr_accessor :term


      #
      # Mapper for DetectedTerms class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DetectedTerms',
          type: {
            name: 'Composite',
            class_name: 'DetectedTerms',
            model_properties: {
              index: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Index',
                type: {
                  name: 'Number'
                }
              },
              original_index: {
                client_side_validation: true,
                required: false,
                serialized_name: 'OriginalIndex',
                type: {
                  name: 'Number'
                }
              },
              list_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ListId',
                type: {
                  name: 'Number'
                }
              },
              term: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Term',
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
