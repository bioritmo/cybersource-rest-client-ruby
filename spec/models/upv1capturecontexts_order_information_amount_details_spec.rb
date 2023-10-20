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

# Unit tests for CyberSource::Upv1capturecontextsOrderInformationAmountDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Upv1capturecontextsOrderInformationAmountDetails' do
  before do
    # run before each test
    @instance = CyberSource::Upv1capturecontextsOrderInformationAmountDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Upv1capturecontextsOrderInformationAmountDetails' do
    it 'should create an instance of Upv1capturecontextsOrderInformationAmountDetails' do
      expect(@instance).to be_instance_of(CyberSource::Upv1capturecontextsOrderInformationAmountDetails)
    end
  end
  describe 'test attribute "total_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "currency"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end