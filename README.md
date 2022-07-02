# Base Dev Env For Django Pytest

django development website pytest

## Basic Commands

### Setup
-   Make project container folder, use this command:

        mkdir <containerFolderName>

-   Move to project container folder, use this command:

        cd <containerFolderName>

-   Install repo, use this command:

        git clone https://github.com/woodkill00/website_pytest.git .

-   Environment Variables - to setup copy sample.env to .env, or use this command:

        cp sample.env .env

-   Make Virtual Environment, use this command:

        python3 -m venv venv

-   Activate Virtual Environment, use this command:

        source venv/bin/activate

-   Install local requirements, use this command:

        .scripts/local/requirements/install.sh

-   Install pre-commit, use this command:

        .scripts/local/pre-commit/install.sh

-   Build docker containers, use this command:

        ./script/local/docker/build.sh

-   Fix database, use this command:

        ./scripts/local/docker/down.sh

    -   Restart docker containers, use this command:

            ./scripts/local/docker/up.sh

### Setting Up Users

-   To create a **normal user account**, just go to Sign Up and fill out the form. Once you submit it, you'll see a "Verify Your E-mail Address" page. Local SMTP server [MailHog](https://github.com/mailhog/MailHog) with a web interface is available as docker container in order to view emails in local development. Go to `http://127.0.0.1:8025` in your browser to see a simulated email verification message. Click on the link to have it open in your browser. Select confirm. Now the user's email should be verified and ready to go.

-   To create a **superuser account**, use this command:

        ./scripts/local/docker/django_create_superuser.sh

For convenience, you can keep your normal user logged in on Chrome and your superuser logged in on Firefox (or similar) | or use incognito mode for same browser usage, so that you can see how the site behaves for both kinds of users.

### Type Checks

Running type checks with mypy script:

        ./scripts/local/docker/django_mypy.sh

### Test Coverage

To run the tests, check your test coverage, and generate an HTML coverage report, run script:

        ./scripts/local/docker/django_coverage.sh

-   Then

        open htmlcov/index.html

to view the test coverage issues which need to be worked on.

### Running Tests With Pytest

-   Pytest, script:

        ./script/local/docker/django_pytest_all.sh
