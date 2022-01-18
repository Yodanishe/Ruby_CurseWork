require 'rails_helper'

RSpec.describe MainController, type: :controller do
  describe 'GET #index' do
    let(:developers) {create_list :developer, 3}
    let(:hits) {create_list :product, 8}

    before { get :index}

    context 'required output per page' do
      it 'render to index template' do
        is_expected.to render_template :index
      end
      it 'instance var developer include only developer' do
        expect(assigns(:developers)).to match_array(developers)
      end
      it 'instance var hits include only hits' do
        expect(assigns(:hits)).to match_array(hits)
      end
    end
  end
end
