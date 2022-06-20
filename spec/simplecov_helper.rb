# frozen_string_literal: true

require 'simplecov'

SimpleCov.start 'rails' do
  enable_coverage :branch

  add_group 'Models', 'app/models'
  add_group 'Controllers', 'app/controllers'
  add_group 'Long files' do |src_file|
    src_file.lines.count > 100
  end
  add_group 'Short files' do |src_file|
    src_file.lines.count < 6
  end

  if ENV['CI']
    formatter SimpleCov::Formatter::SimpleFormatter
  else
    formatter SimpleCov::Formatter::MultiFormatter.new([
                                                         SimpleCov::Formatter::SimpleFormatter,
                                                         SimpleCov::Formatter::HTMLFormatter
                                                       ])
  end

  track_files '**/*.rb'
  minimum_coverage line: 90, branch: 80
end
