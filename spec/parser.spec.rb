require_relative 'spec_helper'
require          'support/fixture_helpers'

describe Fandango::Parser do

  include FixtureHelpers

  specify '.parse returns hash of results' do
    source = fixture_file_content('movies_near_me_73142.rss')
    array = Fandango::Parser.parse(source)
    fixture_yaml = fixture_file_content('movies_near_me_73142.yaml')
    array.to_yaml.must_equal fixture_yaml
  end

end
