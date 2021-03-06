require 'premailer'
require 'premailer-rails3/css_helper'
require 'premailer-rails3/premailer'
require 'premailer-rails3/hook'

module PremailerRails
  @config = {}
  class << self
    attr_accessor :config
  end
end

ActionMailer::Base.register_interceptor(PremailerRails::Hook)
