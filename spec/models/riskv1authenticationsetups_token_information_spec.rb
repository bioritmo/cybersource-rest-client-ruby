=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::Riskv1authenticationsetupsTokenInformation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Riskv1authenticationsetupsTokenInformation' do
  before do
    # run before each test
    @instance = CyberSource::Riskv1authenticationsetupsTokenInformation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Riskv1authenticationsetupsTokenInformation' do
    it 'should create an instance of Riskv1authenticationsetupsTokenInformation' do
      expect(@instance).to be_instance_of(CyberSource::Riskv1authenticationsetupsTokenInformation)
    end
  end
  describe 'test attribute "transient_token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "jti"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
