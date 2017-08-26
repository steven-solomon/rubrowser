require 'rails_helper'

feature 'Graph' do
  scenario 'there are files' do
    given_the_app_is_running
    when_i_view_the_source
    then_i_see_the_graph

    stop_app
  end

  def given_the_app_is_running
    @thread = Thread.new do
      Rubrowser::Server.start(
        port: '8000',
        files: ['spec/features/test_directory']
      )
    end
  end

  def stop_app
    @thread.kill
  end

  def when_i_view_the_source
    visit '/'
  end

  def then_i_see_the_graph
    expect(all('.test-definition').length).to eq(12)
    expect(all('.test-relation').length).to eq(1)
  end
end
