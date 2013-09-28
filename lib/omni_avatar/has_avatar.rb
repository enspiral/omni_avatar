require 'omni_avatar/null_avatar'

module OmniAvatar
  module HasAvatar
    def self.included(base)
      base.has_many :avatars, class_name: 'OmniAvatar::Avatar', as: :owner
    end

    def avatar
      avatars.first || NullAvatar.new
    end

    def add_avatar(avatar)
      if avatar
        self.avatars << avatar
      end
    end
  end
end