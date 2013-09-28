require 'spec_helper'
require 'omni_avatar/has_avatar'

describe OmniAvatar::HasAvatar do
  subject {
    AvatarOwner.new
  }

  context "mixed into a model" do
    let(:avatar) { double(:avatar) }

    before :each do
      @klass = stub_const('AvatarOwner', Class.new)
      @klass.stub(has_many: nil)
      @klass.module_eval do
        attr_accessor :avatars
        include OmniAvatar::HasAvatar

        def initialize
          @avatars = []
        end
      end
      #@klass.send(:include, OmniAvatar::HasAvatar)
    end

    context "adding avatars" do
      it "adds an avatar to the collection of avatars" do
        subject.add_avatar avatar
        subject.avatars.should include(avatar)
        subject.avatar.should == avatar
      end
    end
  end
end