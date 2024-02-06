# AWS S3 Bucket and Static Website Setup Guide

This comprehensive guide covers the steps to create an S3 bucket, upload objects, set up static website hosting, and configure a resource-based policy through the AWS Management Console.

## Section 1: Setting Up S3 Bucket and Static Website on AWS Console

### Step 1: Log in to the AWS Management Console
- Open your web browser.
- Navigate to [AWS Management Console](https://aws.amazon.com/console/).
- Log in with your credentials.

### Step 2: Create an S3 Bucket
- In the AWS Management Console, find and select **S3** under Services.
- Click the **Create bucket** button.
- Enter a **unique Bucket name**.
- Select the **Region** as `eu-west-2`.
- Uncheck **Block all public access** and acknowledge that the bucket will be public.
- (Optional) Adjust other settings as needed (e.g., versioning, logging).
- Click **Create bucket**.

### Step 3: Upload Objects to the Bucket
- Click on the name of the bucket you just created.
- Click the **Upload** button.
- Click **Add files** and select the files (`error.html`, `Staticweb.html`, `istockphoto-938785958-612x612.jpg` `OIP (1).jpeg``Cloud-Engineer-Jobs_Blog-2048x1158.jpeg` ) from your computer.
- Set the permissions for these files to public via ACLs or use a bucket policy.
- Click **Upload**.

### Step 4: Set Up Static Website Hosting
- In the bucket details page, click the **Properties** tab.
- Scroll down and click on the **Static website hosting** card.
- Select **Use this bucket to host a website**.
- Enter `Staticweb.html` in the **Index document** field.
- (Optional) Enter `error.html` in the **Error document** field if you have an error HTML file.
- Click **Save**.

### Step 5: Attach a Resource-Based Policy to the Bucket
- Go to the **Permissions** tab of your bucket.
- Scroll to the **Bucket Policy** section and click **Edit**.
- Enter the following policy to allow public read access:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": ["s3:GetObject"],
            "Resource": ["arn:aws:s3:::global-s3-project-okogie/*"]
        }
    ]
}












