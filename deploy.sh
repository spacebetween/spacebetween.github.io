#!/usr/bin/env bash
PROFILE="spaceBetweenAgent"
If [ ${CIRCLE_BRANCH} === "master" ]
then
	BUCKET=spacebetween.io
else
	BUCKET=staging.spacebetween.io
fi
DIR=_site/
aws  s3  sync $DIR s3://$BUCKET/ --profile "$PROFILE"