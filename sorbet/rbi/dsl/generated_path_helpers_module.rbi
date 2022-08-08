# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `GeneratedPathHelpersModule`.
# Please instead update this file by running `bin/tapioca dsl GeneratedPathHelpersModule`.

module GeneratedPathHelpersModule
  include ::ActionDispatch::Routing::UrlFor
  include ::ActionDispatch::Routing::PolymorphicRoutes

  sig { params(args: T.untyped).returns(String) }
  def admin_flipper_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_refresh_allowlist_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_refresh_game_data_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_root_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_sidekiq_web_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_user_password_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_user_session_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_user_unlock_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def cancel_player_registration_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def destroy_admin_user_session_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def destroy_player_session_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def edit_admin_user_password_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def edit_player_password_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def edit_player_registration_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def edit_rails_conductor_inbound_email_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_area_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_map_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_maps_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_quests_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_root_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_tutorial_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def liveness_status_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_admin_user_password_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_admin_user_session_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_admin_user_unlock_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_player_password_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_player_registration_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_player_session_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_rails_conductor_inbound_email_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_rails_conductor_inbound_email_source_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def player_password_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def player_registration_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def player_session_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def preview_view_component_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def preview_view_components_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_blob_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_blob_representation_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_blob_representation_proxy_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_incinerate_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_reroute_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_sources_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_direct_uploads_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_disk_service_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_properties_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_routes_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mailers_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mailgun_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mandrill_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mandrill_inbound_health_check_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_postmark_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_relay_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_representation_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_sendgrid_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_service_blob_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_service_blob_proxy_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_storage_proxy_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_storage_redirect_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def root_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def turbo_recede_historical_location_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def turbo_refresh_historical_location_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def turbo_resume_historical_location_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def update_rails_disk_service_path(*args); end
end
