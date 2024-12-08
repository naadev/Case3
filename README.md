# THE ULTIMATE CALCULATOR
## Domain Breakdown
- master-ugr.calculator.*/**: Contains the source code for the Calculator.
- master-ugr.calculator.*/tests/master-ugr.calculator.*.tests: Contains the unit tests and other test-related code for the domain.
- master-ugr.calculator.*/ master-ugr.calculator.*.sln: The solution file for the domain.

## Forking with Calculator
If you want to reproduce the environment:
- You will need to create 4 Azure WebApps
	- 1.- One for the backend in UAT
	- 2.- One for the frontend in UAT
	- 3.- One for the backend in PROD
	- 4.- One for the frontend in PROD

The main goal of this project is not to evaluate the technology, but playaround with different
CI/CD pipelines. Thus, the code is not the main focus of this project nor the services.


- 2.- For each of the 4 Azure WebApps you will need to download the publish profile
	- 2.1.- Go to the Azure Portal
	- 2.2.- Go to the App Services
	- 2.3.- Press Create choose a meaningul name:
		- For uat: *your-github-nickname*-calculator-*domain*-uat
		- For prod: *your-github-nickname*-calculator-*domain*
		- In example, given your name is spock:
			- spock-calculator-backend-uat
			- spock-calculator-frontend-uat
			- spock-calculator-backend
			- spock-calculator-frontend
		- Untoggle "Secure unique default hostname" for simplification
		- Select Publish mode with "Code"
		- Select .NET 8 (LTS) as the runtime stack
		- Choose the operating system and the region that you prefer (Windows and West Europe are recommended)
		- Create a new Princing Plan  and namce it with *your-github-nickname*-plan
			- Choose Shared D1 (Shared infrastructue)
	- 2.4 Review and Create

In a real life project, you should not use Publish Profiles and you should use Access Control (IAM) to give permissions to the CI/CD pipeline to deploy the code.
More information in the following link: https://learn.microsoft.com/en-us/azure/app-service/configure-basic-auth-disable?tabs=portal.
For shake of this exercise, we will use publish profiles. **_Don't use Publish Profiles on real life projects_**

 - 3.- Go to the App Services
	- 3.1.- Select the App Service that you just created
	- 3.2.- Go to Configuration
	- 3.3.- Set SCM Basic Auth Publishing Credentials to On
	- 3.4.- Set FPT Basic Auth
	- 3.5.- Save the changes and wait for the update to proceed (usully 10-20 seconds)
	- 3.6.- Go to Overview and click on tab Download Publish Profile
	- 3.7.- Save the file in a secure place
	- 3.8.- Repeat the process for the other 3 App Services
		- You should have 4 publish profiles in total: 2 for UAT and 2 for PROD, one for each domain (frontend and backend)
Create a fork from Case3.
 - 4.- Setting up secrets in the forked repository
	- 4.1.- From newly created fork repository, go to settings
	- 4.2.- In left column of the settings page, extend on Secrets and Variables
	- 4.3.- Select *Actions*
	- 4.4.- Create Secret MASTER_UGR_CI_BACKEND_PROD_SPN and insert the full content (copy+paste) of the publish profile for the backend in PROD
	- 4.5.- Create Secret MASTER_UGR_CI_FRONTEND_PROD_SPN and insert the full content (copy+paste) of the publish profile for the frontend in PROD
	- 4.6.- Create Secret MASTER_UGR_CI_BACKEND_UAT_SPN and insert the full content (copy+paste) of the publish profile for the backend in UAT
	- 4.7.- Create Secret MASTER_UGR_CI_FRONTEND_UAT_SPN and insert the full content (copy+paste) of the publish profile for the frontend in UAT

Create case branches:
  - Ensure only main branch is in your repository. Delete all others if any.
  - From main branch, create a dev branch.
  - From dev branch create following branches for each domain:
	- backed-end -> Backend domain
	- front-end -> Frontend domain
	- lib -> Library domain

## Getting Started
To get started with any of the domains, open the respective solution file (.sln) in Visual Studio 2022. From there, you can build and run the projects, as well as execute the tests.

## Contributing
If you would like to contribute to this project, please follow these steps:
1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Make your changes and commit them with a descriptive message.
4. Push your changes to your fork.
5. Create a pull request to the main repository.

## About the workflows
- master-ugr-ci-backend-uat is the workflow for the backend domain environment. 
- master-ugr-ci-frontend-uat is the workflow for the frontend domain environment.
- master-ugr-ci-calculator-lib is the workflow for the calculator domain library.
- master-ugr-ci-prod is the workflow for the production environment.


## License
This project is licensed under the MIT License. See the LICENSE file for more details.
