provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "md5-processed-rv" { 
	bucket="md5-processed-rv"
	acl="public-read"
	
	tags = {
		Name = "md5-processed-rv"
	}
	# expiration {
	#     days = 90
	# }
}

# Upload an object
resource "aws_s3_object" "md5_rv" {
  bucket = "md5-processed-rv"
  source = "D:/s3/file.txt"
  key    = "md5-processed-rv/folder1/folder2/file.txt"
  etag = filemd5("D:/s3/file.txt")

}

# resource "aws_s3_object" "reena"{
#   bucket = "reena2712"
#   # for_each = fileset("D:/s3/file.txt")
#   # source = "D:/s3/file.txt"
#   key = "reena2712/folder1/"
# }

#for_each = fileset("${path.module}/scripts/", "*")
#source = "${path.module}/scripts/${each.value}"
