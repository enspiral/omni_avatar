require 'spec_helper'
require 'support/spec_database'
require 'omni_avatar/providers/place_hold_it'

describe "building avatars" do
  pending "returns avatar with a file object" do
    provider = OmniAvatar::Providers::PlaceHoldIt.new
    avatar = provider.build_avatar(nil)
    raise avatar.inspect
  end
end