# Heroku Apps

resource "heroku_app" "dlsu_develop" {
  name = "${var.heroku_develop_app}"
  region = "${var.heroku_region}"

  config_vars = {
    APP_ENV ="develop"
  }

  buildpacks = "${var.heroku_app_buildpacks}"
}

resource "heroku_app" "dlsu_staging" {
  name   = "${var.heroku_staging_app}"
  region = "${var.heroku_region}"

  config_vars {
    APP_ENV = "staging"
  }

  buildpacks = "${var.heroku_app_buildpacks}"
}

resource "heroku_app" "dlsu_production" {
  name   = "${var.heroku_production_app}"
  region = "${var.heroku_region}"

  config_vars {
    APP_ENV = "production"
  }

  buildpacks = "${var.heroku_app_buildpacks}"
}
