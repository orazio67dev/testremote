terraform {
    backend "s3" {
        bucket = "s3-demo-max"
        key = "s3remotestate.tf.state"
        region = "eu-central-1"
        access_key = "AKIAVOUSPGVNVJYXIHH7"
        secret_key = "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"
        dynamodb_table = "s3-dynamodb-lock"
    }

}