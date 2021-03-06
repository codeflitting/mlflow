% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tracking-runs.R
\name{mlflow_log_artifact}
\alias{mlflow_log_artifact}
\title{Log Artifact}
\usage{
mlflow_log_artifact(path, artifact_path = NULL, run_id = NULL,
  client = NULL)
}
\arguments{
\item{path}{The file or directory to log as an artifact.}

\item{artifact_path}{Destination path within the run's artifact URI.}

\item{run_id}{Run ID.}

\item{client}{(Optional) An `mlflow_client` object.}
}
\description{
Logs a specific file or directory as an artifact for a run.
}
\details{
When `client` is not specified, these functions attempt to infer the current active client.

When logging to Amazon S3, ensure that the user has a proper policy
attached to it, for instance:

\code{
{
"Version": "2012-10-17",
"Statement": [
  {
    "Sid": "VisualEditor0",
    "Effect": "Allow",
    "Action": [
      "s3:PutObject",
      "s3:GetObject",
      "s3:ListBucket",
      "s3:GetBucketLocation"
      ],
    "Resource": [
      "arn:aws:s3:::mlflow-test/*",
      "arn:aws:s3:::mlflow-test"
      ]
  }
  ]
}
}

Additionally, at least the \code{AWS_ACCESS_KEY_ID} and \code{AWS_SECRET_ACCESS_KEY}
environment variables must be set to the corresponding key and secrets provided
by Amazon IAM.
}
\seealso{
Other tracking functions: \code{\link{mlflow_create_experiment}},
  \code{\link{mlflow_delete_experiment}},
  \code{\link{mlflow_delete_run}},
  \code{\link{mlflow_download_artifacts}},
  \code{\link{mlflow_end_run}},
  \code{\link{mlflow_get_experiment}},
  \code{\link{mlflow_get_metric_history}},
  \code{\link{mlflow_get_run}},
  \code{\link{mlflow_list_artifacts}},
  \code{\link{mlflow_list_experiments}},
  \code{\link{mlflow_list_run_infos}},
  \code{\link{mlflow_log_batch}},
  \code{\link{mlflow_log_metric}},
  \code{\link{mlflow_log_param}},
  \code{\link{mlflow_rename_experiment}},
  \code{\link{mlflow_restore_experiment}},
  \code{\link{mlflow_restore_run}},
  \code{\link{mlflow_search_runs}},
  \code{\link{mlflow_set_tag}},
  \code{\link{mlflow_start_run}}
}
\concept{tracking functions}
