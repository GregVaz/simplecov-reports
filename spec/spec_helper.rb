
if ENV['COVERAGE'] == 'true'
	require 'simplecov'
	require 'simplecov-lcov'
	SimpleCov::Formatter::LcovFormatter.config.report_with_single_file = true
	SimpleCov::Formatter::LcovFormatter.config do |c|
    c.lcov_file_name = 'lcov.info' # default: "YOUR_PROJECT_NAME.lcov"
  end

	SimpleCov.start do
		enable_coverage :branch
		minimum_coverage line: 90, branch: 80
		maximum_coverage_drop line: 5, branch: 10
		formatter SimpleCov::Formatter::MultiFormatter.new([
			SimpleCov::Formatter::SimpleFormatter,
			SimpleCov::Formatter::LcovFormatter
		])
	end
end