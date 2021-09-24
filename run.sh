#!/bin/bash
set -e

S3MNT_OPTS="-o passwdfile=passwd"

echo "$S3MNT_KEY_ID:$S3MNT_SECRET" > passwd && chmod 600 passwd

if [[ -n ${S3MNT_URL+1} ]]; then
	S3MNT_OPTS="$S3MNT_OPTS -o url=$S3MNT_URL";
fi

if [[ -n ${S3MNT_USE_PATHREQUESTSTYLE+1} ]]; then
	echo "PATHREQ set"
	if [[ $S3MNT_USE_PATHREQUESTSTYLE == "y" ]]; then
		echo "PATHREQ value $S3MNT_USE_PATHREQUESTSTYLE";
		S3MNT_OPTS="$S3MNT_OPTS -o use_path_request_style";
	fi;
fi

S3MNT_OPTS="$S3MNT_OPTS $S3MNT_OPTIONS"

s3fs "$S3MNT_BUCKET" "$S3MNT_MOUNTPOINT" $S3MNT_OPTS && tail -f /dev/null

