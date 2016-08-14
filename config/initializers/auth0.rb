Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    '7X5UfblyHesbtF0CxCZrVvJ9oRckMIBR',
    '4zDEYSEdXrjmwUVG0v3Nzz4_QfGiEaY5fNkA0qtzONE-BcsT7QSTHOCLNpu4oXPO',
    'lauraweston.eu.auth0.com',
    callback_path: "/auth/auth0/callback"
  )
end