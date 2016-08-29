# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( article_types.css )
Rails.application.config.assets.precompile += %w( article.css )
Rails.application.config.assets.precompile += %w( authors.css )
Rails.application.config.assets.precompile += %w( dev_methods.css )
Rails.application.config.assets.precompile += %w( feedbacks.css )
Rails.application.config.assets.precompile += %w( methodologies.css )
Rails.application.config.assets.precompile += %w( ratings.css )
Rails.application.config.assets.precompile += %w( research_methods.css )
Rails.application.config.assets.precompile += %w( research_participants.css )
Rails.application.config.assets.precompile += %w( roles.css )
Rails.application.config.assets.precompile += %w( statuses.css )
Rails.application.config.assets.precompile += %w( users.css )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( home.js )
Rails.application.config.assets.precompile += %w( article_types.js )
Rails.application.config.assets.precompile += %w( article.js )
Rails.application.config.assets.precompile += %w( authors.js )
Rails.application.config.assets.precompile += %w( dev_methods.js )
Rails.application.config.assets.precompile += %w( feedbacks.js )
Rails.application.config.assets.precompile += %w( methodologies.js )
Rails.application.config.assets.precompile += %w( ratings.js )
Rails.application.config.assets.precompile += %w( research_methods.js )
Rails.application.config.assets.precompile += %w( research_participants.js )
Rails.application.config.assets.precompile += %w( roles.js )
Rails.application.config.assets.precompile += %w( statuses.js )
Rails.application.config.assets.precompile += %w( users.js )
