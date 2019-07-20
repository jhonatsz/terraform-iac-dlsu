# Terraform variable values, update this file with your own values.
heroku_account_email = "lcaii.sann@gmail.com"
heroku_api_key = "abbcd1b2-a62a-4ee2-b2d5-a8f7e12a64eb"

heroku_pipeline_name = "dlsu-pipeline-v2"

heroku_develop_app = "dlsu-develop"
heroku_staging_app = "dlsu-staging"
heroku_production_app = "dlsu-production"
heroku_region = "us"

heroku_app_buildpacks = [
  "heroku/go",
]

heroku_develop_database = "heroku-postgresql:hobby-basic"
