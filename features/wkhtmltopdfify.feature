Feature: We can call wkhtmltopdf from the command line and build pdf with options
	We need to be able to call wkhtmltopdf so that we can create pdf documents from
	our html source documents. We should be able to pass basic options as well.
		
	Scenario: Check that we can call wkhtmltopdf
		When I run `wkhtmltopdf`
		Then the output should contain "wkhtmltopdf"
	
	Scenario: Check that we are using the current version
		When I successfully run `wkhtmltopdf -V`
		Then the output should contain "wkhtmltopdf 0.10.0 rc2"
		
	Scenario: Build a new pdf document from an html document
		Given a file named "hello.html" with:
		"""
		<p>Hello World</p>
		"""
		When I run `wkhtmltopdf hello.html hello.pdf`
		Then the output should contain "Loading pages (1/6)"
		And the output should contain "Done"
		Then a file named "hello.pdf" should exist