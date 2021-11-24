resource "aws_codepipeline" "ruby_Pipeline" {

    name = "ruby_Pipeline"
    role_arn = aws_iam_role.tf-codepipeline-role.arn


    artifact_store {
        type="S3"
        location = aws_s3_bucket.codepipeline_artifacts.id
    }

    stage {
    name = "Source"

    action {
      category = "Source"
      configuration = {
        "OAuthToken" = "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"
        "Branch"               = "main"
        "Owner"                = "shivani3495"
        "PollForSourceChanges" = "false"
        "Repo"                 = "rubyonrails"
      }
      input_artifacts = []
      name            = "Source"
      output_artifacts = [
        "SourceArtifact",
      ]
      owner     = "ThirdParty"
      provider  = "GitHub"
      run_order = 1
      version   = "1"
    }
  }




    stage {
        name ="Deploy"
        action{
            name = "Deploy"
            category = "Deploy"
            provider = "CodeDeploy"
            version = "1"
            owner = "AWS"
            input_artifacts = ["SourceArtifact"]
            configuration = { 
                ApplicationName = "demo_app"
                DeploymentGroupName = "cd_dg1"
                
            }
        }
    }
}