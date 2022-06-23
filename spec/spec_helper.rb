
if ENV['COVERAGE'] == 'true'
	require 'simplecov'
	SimpleCov.start do
		enable_coverage :branch
		minimum_coverage line: 90, branch: 80
		maximum_coverage_drop line: 5, branch: 10
	end
end