resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = "devopscodepipeline-artifacts"
  acl    = "private"
}