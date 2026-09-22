# NOTE:
# Per repository/module-development standards, all resources are defined
# inline within resource-type-specific files (kms.tf, s3.tf) rather than via
# external module blocks, to keep this configuration self-contained and
# standalone-runnable. This file intentionally contains no direct resource
# definitions; see kms.tf and s3.tf for the S3 bucket implementation.