# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, "モデルに関するテスト", type: :model do
  describe '新規登録' do
    it "有効な内容の場合は保存されるか" do
      expect(FactoryBot.build(:event)).to be_valid
    end
  end
end