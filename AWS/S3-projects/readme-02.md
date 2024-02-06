# AWS S3 Bucket and Static Website Setup Guide

This comprehensive guide covers the steps to create an S3 bucket, upload objects, set up static website hosting, and configure a resource-based policy through the AWS Management Console. Additionally, it includes information on how to import these resources into your Terraform infrastructure if they were created outside of Terraform's management.

## Section 1: Setting Up S3 Bucket and Static Website on AWS Console

### Step 1: Log in to the AWS Management Console
- Open your web browser.
- Navigate to [AWS Management Console](https://aws.amazon.com/console/).
- Log in with your credentials.

### Step 2: Create an S3 Bucket
- In the AWS Management Console, find and select **S3** under Services.
- Click the **Create bucket** button.
- Enter a **unique Bucket name**.
- Select the **Region** as `us-east-1`.
- Uncheck **Block all public access** and acknowledge that the bucket will be public.
- (Optional) Adjust other settings as needed (e.g., versioning, logging).
- Click **Create bucket**.

### Step 3: Upload Objects to the Bucket
- Click on the name of the bucket you just created.
- Click the **Upload** button.
- Click **Add files** and select the files (`index.html`, `page1.html`, `page2.html`) from your computer.
- Set the permissions for these files to public via ACLs or use a bucket policy.
- Click **Upload**.

### Step 4: Set Up Static Website Hosting
- In the bucket details page, click the **Properties** tab.
- Scroll down and click on the **Static website hosting** card.
- Select **Use this bucket to host a website**.
- Enter `index.html` in the **Index document** field.
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
            "Resource": ["arn:aws:s3:::my-unique-bucket-name/*"]
        }
    ]
}


# AWS S3 Static Website Hosting Guide

This guide provides detailed steps on how to create an S3 bucket, set up static website hosting, upload objects, and configure a resource-based policy to make the website publicly accessible via AWS Management Console.

## Step 6: Share the Static Website URL

After setting up your S3 bucket and configuring the static website hosting, you can share the website with others.

### Instructions:

1. **Navigate to the Properties Tab**:
   - Go to your S3 bucket in the AWS Management Console.
   - Click on the **Properties** tab.

2. **Find the Endpoint URL**:
   - In the **Static website hosting** card, locate the **Endpoint URL**. This URL is the public address of your static website.

## Step 7: Test and Share the URL

Ensure that your static website is functioning correctly and share it with your intended audience.

### Instructions:

1. **Test the URL**:
   - Open a new tab in your web browser.
   - Enter the static website's URL (e.g., `http://my-unique-bucket-name.s3-website-us-east-1.amazonaws.com`) and press Enter.
   - Verify that the website loads correctly and that all images and links are functioning as expected.

2. **Share the URL**:
   - Copy the website's URL.
   - Share it in your WhatsApp group or with any other intended audience.

## Additional Resources

Find below the images you uploaded to your S3 bucket for your static website:

- **Image 1**: ![Image 1](https://global-s3-project-okogie.s3.eu-west-2.amazonaws.com/OIP+(1).jpeg)
- **Image 2**: ![Image 2](https://global-s3-project-okogie.s3.eu-west-2.amazonaws.com/Cloud-Engineer-Jobs_Blog-2048x1158.jpeg)
- **Static Web Page**: ![Static Web Page](https://global-s3-project-okogie.s3.eu-west-2.amazonaws.com/Staticweb.html)

Replace `my-unique-bucket-name` with the actual name of your S3 bucket when accessing your static website. Ensure that the URLs to your images are correctly referenced in your HTML files to display them on your website.
