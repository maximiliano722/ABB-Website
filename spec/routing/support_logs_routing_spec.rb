require 'rails_helper'

RSpec.describe SupportLogsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/support_logs').to route_to('support_logs#index')
    end

    it 'routes to #new' do
      expect(get: '/support_logs/new').to route_to('support_logs#new')
    end

    it 'routes to #show' do
      expect(get: '/support_logs/1').to route_to('support_logs#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/support_logs/1/edit').to route_to('support_logs#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/support_logs').to route_to('support_logs#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/support_logs/1').to route_to('support_logs#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/support_logs/1').to route_to('support_logs#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/support_logs/1').to route_to('support_logs#destroy', id: '1')
    end
  end
end
