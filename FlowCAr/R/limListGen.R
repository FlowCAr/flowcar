limListGen <- function(limfile,...)
{

  cat("Generating Networks
")

  AllNetworks <- Xsample(limfile, ...)

  lengthA <- nrow(AllNetworks)
  fullListMat <-  list(NULL)
  returnNetworks <-  list(NULL)
  stepi <- 0
  pb = txtProgressBar(min = 0, max = lengthA, initial = 0)
  for (var in 1:as.numeric(lengthA))
  {
    stepi = stepi + 1
    setTxtProgressBar(pb,stepi)

    fullListMat[[(var)]] <- Flowmatrix(limfile,web=AllNetworks[var,])
  }

  returnNetworks[[1]] <- AllNetworks
  returnNetworks[[2]] <- fullListMat
  names(returnNetworks) <-  c("AllNetworks","FlowMatrices")
  cat("
Networks created")

  return(returnNetworks)
}
