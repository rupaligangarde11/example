
aws s3 cp ./build/distributions/example.zip s3://twdevops-workshop

aws elasticbeanstalk create-application-version --application-name "My First Elastic Beanstalk Application" --version-label $TRAVIS_BUILD_NUMBER --source-bundle "S3Bucket=#S3Bucket,S3Key=example.zip"

aws elasticbeanstalk update-environment --environment-name "default-environment" --version-label $TRAVIS_BUILD_NUMBER
