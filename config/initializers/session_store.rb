if Rails.env=== 'production'
    Rails.application.config.session_store :cookie_store, key: '_gravity', domain: 'gravity.com'
else
    Rails.application.config.session_store :cookie_store, key: "_gravity"
end
