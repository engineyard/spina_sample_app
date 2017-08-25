on_app_master do
  run "echo "SELECT pg_terminate_backend(procpid) FROM pg_stat_activity WHERE datname='spina_sample_app';" | psql -U postgres"
  run "bundle exec rake db:load_sample_if_empty_db DISABLE_DATABASE_ENVIRONMENT_CHECK=1"
end
