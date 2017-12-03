#!/bin/sh

read -p "Please enter the ProjectName:" no;

pod lib create $no --template-url=https://github.com/fantastic-peng/PYPod_Template.git
