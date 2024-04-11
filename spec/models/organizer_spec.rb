# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Organizer, "モデルに関するテスト", type: :model do
  describe '新規登録' do
    it "有効な内容の場合は保存されるか" do
      expect(FactoryBot.build(:organizer)).to be_valid
    end
  end
end