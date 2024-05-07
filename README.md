# s3-mounter

Mount s3 buckets into pods in k8s. This image is a fork from meain/s3-mounter, mainly to support adding custom S3 providers, as well as the specification of additional options passed to s3fs.

[![Publish Docker image](https://github.com/tobiassoltermann/s3-mounter/actions/workflows/publish-dockerhub.yml/badge.svg)](https://github.com/tobiassoltermann/s3-mounter/actions/workflows/publish-dockerhub.yml)
# Parameters


| Parameters | Description | Required | Default
| --------- | ----------- | -------- | -------
| `S3MNT_KEY_ID` | The key to be used | y | empty
| `S3MNT_SECRET` | The secret to the key | y | empty
| `S3MNT_MOUNTPOINT` | Mountpoint in the filesystem | n | `/var/s3fs`
| `S3MNT_USE_PATHREQUESTSTYLE` | Use path request style | n | false
| `S3MNT_URL` | Optionally provide URL for non-AWS implementations | n | Amazon S3
| `S3MNT_OPTIONS` | Pass options to [s3fs-fuse](https://github.com/s3fs-fuse/s3fs-fuse) | n | empty

# Reason

# Details

[Here](https://blog.meain.io/2020/mounting-s3-bucket-kube/) is a blog post which explains it in detail.
