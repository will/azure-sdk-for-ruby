# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Publishing options for requested profile.
    #
    class CsmPublishingProfileOptions

      include MsRestAzure

      # @return [PublishingProfileFormat] Name of the format. Valid values are:
      # FileZilla3
      # WebDeploy -- default
      # Ftp. Possible values include: 'FileZilla3', 'WebDeploy', 'Ftp'
      attr_accessor :format


      #
      # Mapper for CsmPublishingProfileOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CsmPublishingProfileOptions',
          type: {
            name: 'Composite',
            class_name: 'CsmPublishingProfileOptions',
            model_properties: {
              format: {
                required: false,
                serialized_name: 'format',
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
