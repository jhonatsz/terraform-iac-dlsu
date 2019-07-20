# Heroku Provider Variable

variable "heroku_account_email" {}
variable "heroku_api_key" {}

# Pipeline Variables
variable "heroku_pipeline_name" {}

# App Variables

variable "heroku_staging_app" {}
variable "heroku_production_app" {}
variable "heroku_develop_app" {}
variable "heroku_region" {}
variable "heroku_app_buildpacks" {
  type = "list"
}


# Addons variable
#variable "heroku_develop_database" {}
