require 'orm_adapter_couchrest_model/couchrest_model'

CouchRest::Model::Base.send :include, Devise::Models
