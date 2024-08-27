module "s3_shakti_store {
  source                               = "git@github.com:subhgupta007/cmn-terraform-module-infrastructure.git//aws/s3-bucket?ref=master"
  bucket_name                          = var.s3_shakti.bucket_name
  versioning                           = var.s3_shakti.versioning
  enable_s3_bucket_public_access_block = true
  bucket_block_public_acls             = true
  bucket_block_public_policy           = true
  bucket_ignore_public_acls            = true
  bucket_restrict_public_buckets       = true
  logging                              = true
  target_bucket                        = var.s3_shakti.target_bucket
}