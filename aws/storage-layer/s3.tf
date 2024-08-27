module "s3_shakti_store {
  source                               = "git@github.com:subhgupta007/cmn-terraform-module-infrastructure.git//aws/s3-bucket?ref=master"
  bucket_name                          = var.file_import_s3.bucket_name
  versioning                           = var.file_import_s3.versioning
  enable_s3_bucket_public_access_block = true
  bucket_block_public_acls             = true
  bucket_block_public_policy           = true
  bucket_ignore_public_acls            = true
  bucket_restrict_public_buckets       = true
  logging                              = true
  target_bucket                        = var.file_import_s3.target_bucket
}