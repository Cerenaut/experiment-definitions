#!/bin/bash

aws s3 sync s3://agief-project/data/mnist/all_t10k ~/agief-project/data/mnist/testing
aws s3 sync s3://agief-project/data/mnist/all_train ~/agief-project/data/mnist/training