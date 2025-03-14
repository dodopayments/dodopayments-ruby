# frozen_string_literal: true

require_relative "lib/dodo-payments/version"

Gem::Specification.new do |s|
  s.name = "dodo-payments"
  s.version = DodoPayments::VERSION
  s.summary = "Ruby library to access the Dodo Payments API"
  s.authors = ["Dodo Payments"]
  s.email = "founders@dodopayments.com"
  s.files = Dir["lib/**/*.rb", "rbi/**/*.rbi", "sig/**/*.rbs", "manifest.yaml"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://gemdocs.org/gems/dodo-payments/latest"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/dodo-payments-ruby"
  s.metadata["rubygems_mfa_required"] = "false"
end
