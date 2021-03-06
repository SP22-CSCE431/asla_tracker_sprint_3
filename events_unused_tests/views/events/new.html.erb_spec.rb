# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('events/new', type: :view) do
  before do
    assign(:event, Event.new(
                     name: 'MyString',
                     location: 'MyString',
                     description: 'MyString',
                     event_type: 1
                   )
    )
  end

  it 'renders new event form' do
    render

    assert_select 'form[action=?][method=?]', events_path, 'post' do
      assert_select 'input[name=?]', 'event[name]'

      assert_select 'input[name=?]', 'event[location]'

      assert_select 'input[name=?]', 'event[description]'

      assert_select 'input[name=?]', 'event[event_type]'
    end
  end
end
