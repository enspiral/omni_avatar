require 'carrierwave'
require 'active_record'
require 'carrierwave/orm/activerecord'

module OmniAvatar
  class Avatar < ActiveRecord::Base
    mount_uploader :image, AvatarImageUploader

    belongs_to :owner, polymorphic: true

    attr_accessible :remote_image_url, :provider_name
  end
end