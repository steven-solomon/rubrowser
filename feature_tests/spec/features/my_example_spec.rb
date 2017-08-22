require 'rails_helper'

feature 'Dependency Graph' do
  scenario 'should do something' do
    given_i_am_viewing_my_source
    then_i_see_depedencies
  end

  def given_i_am_viewing_my_source
    visit '/'
  end

  def then_i_see_dependencies; end
end
