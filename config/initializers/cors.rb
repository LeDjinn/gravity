Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins 'https://upbeat-neumann-fefc86.netlify.app'
        resource '*', headers: :any, methods: [:get,:put, :patch, :delete, :head, :post, :options],
    credentials: true
    end
end