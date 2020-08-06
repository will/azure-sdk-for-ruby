# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2018_06_01_preview
  module Models
    #
    # The Linux operation systems profile.
    #
    class OsProfile

      include MsRestAzure

      # @return [LinuxOperatingSystemProfile] The Linux OS profile.
      attr_accessor :linux_operating_system_profile


      #
      # Mapper for OsProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OsProfile',
          type: {
            name: 'Composite',
            class_name: 'OsProfile',
            model_properties: {
              linux_operating_system_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linuxOperatingSystemProfile',
                type: {
                  name: 'Composite',
                  class_name: 'LinuxOperatingSystemProfile'
                }
              }
            }
          }
        }
      end
    end
  end
end
