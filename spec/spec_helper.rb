require 'simplecov'
require 'simplecov-lcov'
SimpleCov::Formatter::LcovFormatter.config.report_with_single_file = true
SimpleCov.start 'rails' do
	formatter SimpleCov::Formatter::MultiFormatter.new([
		SimpleCov::Formatter::SimpleFormatter,
		SimpleCov::Formatter::LcovFormatter
	])
end