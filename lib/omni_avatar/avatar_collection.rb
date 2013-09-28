
module OmniAvatar
  module AvatarCollection
    def <<(avatar)
      remove_for_provider(avatar)
      if avatar
        super(avatar)
      end
    end

    private

    def remove_for_provider(avatar)
      destroy_records for_provider(avatar.provider_name)
    end

    def for_provider(name)
      select do |match|
        match.provider_name == name
      end
    end
  end
end