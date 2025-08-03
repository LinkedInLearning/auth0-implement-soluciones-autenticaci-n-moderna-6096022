# frozen_string_literal: true

class ProfileController < ApplicationController
  before_action :require_login

  def show
    @user = {
      nickname: 'Customer',
      name: 'One Customer',
      emoji: '🌝',
      updated_at: '2021-05-04T21:33:09.415Z',
      email: 'customer@example.com',
      email_verified: false,
      sub: 'auth0|12345678901234567890',
      id_token: current_user
    }
  end
end