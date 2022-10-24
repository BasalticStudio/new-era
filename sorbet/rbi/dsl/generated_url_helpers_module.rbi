# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `GeneratedUrlHelpersModule`.
# Please instead update this file by running `bin/tapioca dsl GeneratedUrlHelpersModule`.

module GeneratedUrlHelpersModule
  include ::ActionDispatch::Routing::UrlFor
  include ::ActionDispatch::Routing::PolymorphicRoutes

  sig { params(args: T.untyped).returns(String) }
  def admin_data_area_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_data_areas_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_data_map_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_data_maps_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_flipper_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_refresh_allowlist_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_refresh_game_data_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_root_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_sidekiq_web_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_user_password_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_user_session_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def admin_user_unlock_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def cancel_player_registration_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def destroy_admin_user_session_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def destroy_player_session_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def edit_admin_user_password_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def edit_player_password_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def edit_player_registration_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def edit_rails_conductor_inbound_email_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_area_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_battle_actions_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_battle_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_map_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_maps_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_quests_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_root_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def game_tutorial_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def liveness_status_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_admin_user_password_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_admin_user_session_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_admin_user_unlock_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_player_password_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_player_registration_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_player_session_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_rails_conductor_inbound_email_source_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_rails_conductor_inbound_email_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def player_password_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def player_registration_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def player_session_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def preview_view_component_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def preview_view_components_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_blob_representation_proxy_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_blob_representation_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_blob_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_incinerate_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_reroute_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_sources_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_emails_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_direct_uploads_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_disk_service_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_properties_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_routes_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mailers_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mailgun_inbound_emails_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mandrill_inbound_emails_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mandrill_inbound_health_check_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_postmark_inbound_emails_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_relay_inbound_emails_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_representation_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_sendgrid_inbound_emails_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_service_blob_proxy_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_service_blob_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_storage_proxy_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_storage_redirect_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def root_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def turbo_recede_historical_location_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def turbo_refresh_historical_location_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def turbo_resume_historical_location_url(*args); end

  sig { params(args: T.untyped).returns(String) }
  def update_rails_disk_service_url(*args); end
end
