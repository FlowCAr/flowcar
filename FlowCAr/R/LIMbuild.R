LIMbuild <- function(Rfile)
{

  mLIM <- Read(Rfile)

  LIM <- Setup(mLIM)


limfile <- LIM


  varCompo <- as.vector(limfile$Components[,1])
  varExt <- as.vector(limfile$Externals[,1])
  cat("
LIM files require to be 'packed' in order to be used for analysis with enaR.
In order to properly complete the packing process, the FlowCAr file structure must be correct.
Please check that the following information is correct.")
  cat("

      Network nodes: ")
  cat(varCompo)

  cat("

      Externals: ")
  cat(varExt)

  importNodes <- as.data.frame.vector( grep("Input$", limfile$Externals[,1]))
  for (var in importNodes)
  {
    importNodeNum <- as.vector(limfile$Externals[var,1])
  }
  cat("

      Input nodes: ")
  cat(importNodeNum)


  exportNodes <- as.data.frame.vector( grep("Export$", limfile$Externals[,1]))
  for (var in exportNodes)
  {
    exportNodeNum <- as.vector(limfile$Externals[var,1])
  }
  cat("

      Export nodes: ")
  cat(exportNodeNum)


  respElement <-  as.vector(LIM$Externals[,1])[1]
  cat("

      Respiration Element: ")
  cat(respElement)

    NLNodeNodes <- as.data.frame.vector( grep("NLNODE", limfile$Components[,1]))

    val <- c(NULL)
    for (trueCount in (NLNodeNodes))
    {
      NLNodes <- as.vector(limfile$Components[trueCount,1])
    }

  cat("

      Non-Living nodes: ")
  cat(NLNodes)

  cat("

If the above details do not represent your input file correctly, please adjust your FlowCAr input file and re-run this function")
return(LIM)
}
