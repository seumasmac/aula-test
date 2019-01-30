
module "elasticsearch" {
  source      = "../modules/elasticsearch/"
  region      = "us-east-1"

  domain      = "smktest"
  type        = "t2.small.elasticsearch"
  esversion   = "6.4"
  snap_start  = 4
}
