Feature: language selector
	As a customer
	I want to be able to view the site in Chinese or English
	So I can read about beer in the language which I am most fluent.

	@javascript
	Scenario: Selecting English language content
		Given I am on the homepage
		When I follow "EN"
		Then I should be on the homepage
		And I should see "About Strand Beer"
		And I should see "关于斯特兰德啤酒" within ".hidden"

	@javascript		
	Scenario: Selecting Chinese language content
		Given I am on the homepage
		When I follow "中文"
		Then I should be on the homepage
		And I should see "关于斯特兰德啤酒"
		And I should see "About Strand Beer" within ".hidden"