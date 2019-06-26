provider "aws" {
    region                      = "${var.region}"
    profile                     = "${var.profile}"
}

module "dev-api-gateway" {
  source = "../modules/api-gateway"
  resource_path = "callme"
  http_method = "GET"
  integration_http_method = "GET"
  authorization = "GET"
}
