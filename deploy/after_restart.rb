on_app_master do
  run "bundle exec rake db:load_sample_if_empty_db DISABLE_DATABASE_ENVIRONMENT_CHECK=1"
end
