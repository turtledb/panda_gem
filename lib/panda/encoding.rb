module Panda
  class Encoding < Base
    class << self
      def path
        "/videos/:video_id/encodings"
      end
      
      def find_all_by_video_id(id)
        find_by_path(get_one_path, {:video_id => id})
      end
    end
    
    def profile
      @profile ||= Profile.find(profile_id)
    end
    
    def cloud_id
      Panda.connection.cloud_id
    end
    
    def cloud
      @cloud ||= Cloud.find(cloud_id)
    end
    
  end
end