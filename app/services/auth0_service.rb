require 'auth0'

class Auth0Service 
  def self.create_client
    @client ||= Auth0Client.new(
      client_id: ENV['AUTH0_CLIENT_ID'],
      client_secret: ENV['AUTH0_CLIENT_SECRET'],
      domain: ENV['AUTH0_DOMAIN'],
      api_version: 2
    )
  end

  def self.get_user_metadata(user_id)
    client = create_client
    user = client.user(user_id)
    user['user_metadata'] || {}
  end

  def self.update_barista_level(user_id, level)
    create_client.patch_user(user_id, {
      user_metadata: {
        barista_level: level
      }
    })
  end

  def self.users
    begin
      create_client.users.map(&:deep_symbolize_keys)
    rescue => e
      Rails.logger.error("Error fetching users: #{e.message}")
      []  
    end
  end

  def self.get_user(user_id)
    begin
      create_client.user(user_id).deep_symbolize_keys
    rescue => e
      Rails.logger.error("Error fetching user: #{e.message}")
      nil
    end
  end
end