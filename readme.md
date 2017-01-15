# Base AMI
In order to improve consistency and start-up times, we require a base image with the following:
- Ubuntu 16.04
- Docker 1.12+ (at the time of writing this, 1.12 is a release candidate)
- Auto-mounting EFS at /home/ubuntu/efs

## Using this project

### Prerequisites
- [packer](https://packer.io)
- an AWS account with credentials
- (optional) AWS VPC Id and Subnet Id if using a non-default VPC

### Building the AMI

First, set some environment variables:

|Env Variable|Description|
|:-----------|:----------|
|AWS_ACCESS_KEY_ID|AWS access key |
|AWS_SECRET_ACCESS_KEY|AWS secret key |
|AWS_VPC_ID| vpc id to use if not using a default VPC |
|AWS_SUBNET_ID| subnet id to use for the temporary ec2 instance |

Then, run the build:

```
packer build base-image.json
```
