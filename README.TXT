After clone the GIT Repository
Execute ./deploy_app.sh (You must need to change the --subnet-id subnet-79adca1d to your VPC Public-Zone or Private)

This simple script just lunches a new Red Hat box inside the VPC

After the box is created the AWS client run the file called "application.sh" this file Update update the Box, Install Ruby and deploy the application via basic Bash commands.

And finally they run the application in BG via &.

Quick and Dirty.

And probably this is not going to work for you because I don't have enough information from your VPC, Security Groups etc.

The Ideal Solution can be done from Terrafom, deploy all the application in minimum two Availability zones, on front of a load balancer, And one Autoscaling group. 

The possibilities in AWS never end. 

