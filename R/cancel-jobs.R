#' Cancel slurm jobs
#' @param .mod model file
#' @param jobid job submission ID
#'
#' @export

cancel_nm <- function(.mod,...) {

  #' TODO: Create a function to extract jobid
  #' from bbr object: get-jobs.R

  cmd <- list(cmd = "scancel", args = jobid)
  res <- processx::run(cmd$cmd, args = cmd$args)
  if (res$status != 0) {
    rlang::abort("unable to cancel slurm job")
  }

  return (res)
}

cancel_slurm <- function()

#' TODO: Create function to check the validity
#' of jobid
check_jobid <- function() {

}
