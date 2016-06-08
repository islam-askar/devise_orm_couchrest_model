require 'rails/generators/named_base'
require 'generators/devise/orm_helpers'
require 'couchrest/model/base'

module CouchrestModel
  module Generators
    class DeviseGenerator < Rails::Generators::NamedBase
      include Devise::Generators::OrmHelpers

      def generate_model
        invoke "couchrest_model:model", [name] unless model_exists? && behavior == :invoke
      end

      def inject_property_types
        inject_into_file model_path, migration_data, after: "include CouchRest::Model::Base\n" if model_exists?
      end

      def inject_devise_content
        inject_into_file model_path, model_contents, after: "include CouchRest::Model::Base\n" if model_exists?
      end

      def migration_data
<<RUBY
  ## Database authenticatable
	property :email, String, :default => ""
	property :encrypted_password, String, :default => ""

  ## Recoverable
	property :reset_password_token, String
	property :reset_password_sent_at, Time
  
  ## Rememberable
	property :remember_created_at, Time

  ## Trackable
	property :sign_in_count, Integer, default: 0
  	property :current_sign_in_at, Time
	property :last_sign_in_at, Time
   property :current_sign_in_ip, String
  	property :last_sign_in_ip, String

  ## Confirmable
  # property :confirmation_token, String
  # property :confirmed_at,       Time
  # property :confirmation_sent_at, Time
  # property :unconfirmed_email,  String # Only if using reconfirmable

  ## Lockable
  # property :failed_attempts, Integer, default: 0 # Only if lock strategy is :failed_attempts
  # property :unlock_token,  String # Only if unlock strategy is :email or :both
  # property :locked_at,  Time
RUBY
      end
    end
  end
end
