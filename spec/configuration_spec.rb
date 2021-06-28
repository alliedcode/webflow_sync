# frozen_string_literal: true

require 'rails_helper'

module WebflowSync
  RSpec.describe Configuration do
    context 'when skip_webflow_sync is false' do
      it 'is false' do
        WebflowSync.configure do |config|
          config.skip_webflow_sync = false
        end

        expect(WebflowSync.configuration.skip_webflow_sync).to be(false)
      end
    end

    context 'when skip_webflow_sync is true' do
      it 'is true' do
        WebflowSync.configure do |config|
          config.skip_webflow_sync = true
        end

        expect(WebflowSync.configuration.skip_webflow_sync).to be(true)
      end
    end

    context 'when sync_webflow_slug is true' do
      it 'is true' do
        WebflowSync.configure do |config|
          config.sync_webflow_slug = true
        end

        expect(WebflowSync.configuration.sync_webflow_slug).to be(true)
      end
    end
  end
end
