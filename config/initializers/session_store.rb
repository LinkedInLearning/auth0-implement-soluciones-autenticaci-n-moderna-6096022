Rails.application.config.session_store :active_record_store,
  key: '_auth0_linkedin_session',
  expire_after: 12.hours,
  secure: Rails.env.production?
