
if ENV['COVERAGE'] == 'true'
	require 'simplecov'
	require 'simplecov-lcov'

	SimpleCov::Formatter::LcovFormatter.config do |c|
		c.report_with_single_file = true
    c.lcov_file_name = 'lcov.info'
  end

	SimpleCov.formatter = SimpleCov::Formatter::LcovFormatter

	SimpleCov.start do
		enable_coverage :branch
		minimum_coverage line: 90, branch: 80
		maximum_coverage_drop line: 5, branch: 10
	end
end