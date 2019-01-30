/* Elasticsearch cluster

  Example usage:

  module "elasticsearch" {                    
    source      = "../modules/elasticsearch/" // path to the module (required)
    region      = "us-east-1"                 // region (required)
    domain      = "foobar "                   // domain name (required)
    type        = "t2.small.elasticsearch"    // type of cluster (required)
    esversion   = "6.4"                       // elasticsearch version (default: 6.4)
    snap_start  = 4                           // time to start snapshots (default: 23)
    tags        = {                           // tags for cluster (default: {} )
      mytag     = "foo"
      othertag  = "bar"
    }
  }

*/

resource "aws_elasticsearch_domain" "escluster" {
  domain_name           = "${var.domain}"
  elasticsearch_version = "${var.esversion}"

  cluster_config {
      instance_type = "${var.type}"
  }

  snapshot_options {
    automated_snapshot_start_hour = "${var.snap_start}"
  }

  ebs_options {
    ebs_enabled = true
    volume_size = 10
  }

  tags = "${var.tags}"
}
