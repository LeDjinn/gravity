if Rails.env === 'production'
    Rails.application.config.session_store :cookie_store, key: '_gravity', same_site: :none, secure: true, domain: 'https://gravitytestapi.herokuapp.com'
else
    Rails.application.config.session_store :cookie_store, key: "_gravity",same_site: :none, secure: true, domain: 'https://gravitytestapi.herokuapp.com'
end
