# Heroku Pipeline

resource "heroku_pipeline" "dlsu_pipeline" {
  name = "${var.heroku_pipeline_name}"
}

resource "heroku_pipeline_coupling" "dlsu_develop_pipeline" {
  app      = "${heroku_app.dlsu_develop.name}"
  pipeline = "${heroku_pipeline.dlsu_pipeline.id}"
  stage    = "development"
}

resource "heroku_pipeline_coupling" "dlsu_staging_pipeline" {
  app      = "${heroku_app.dlsu_staging.name}"
  pipeline = "${heroku_pipeline.dlsu_pipeline.id}"
  stage    = "staging"
}

resource "heroku_pipeline_coupling" "dlsu_production_pipeline" {
  app      = "${heroku_app.dlsu_production.name}"
  pipeline = "${heroku_pipeline.dlsu_pipeline.id}"
  stage    = "production"
}
