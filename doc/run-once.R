library(reticulate)

# Check if conda exists
conda_path <- tryCatch(conda_binary(), error = function(e) NULL)

if (is.null(conda_path)) {
  stop("❌ Conda binary not found. Run reticulate::install_miniconda() to install.")
}

# Create the environment if missing
envs <- conda_list()$name
if (!"r-reticulate" %in% envs) {
  message("Creating 'r-reticulate' environment...")
  conda_create("r-reticulate", packages = "numpy", python_version = "3.10")
}

# Activate it
use_condaenv("r-reticulate", required = TRUE)

# Install missing Python packages
required_py_pkgs <- c("pandas", "numpy", "scikit-learn", "tensorflow")
missing <- required_py_pkgs[!sapply(required_py_pkgs, py_module_available)]

if (length(missing) > 0) {
  message("Installing missing Python packages: ", paste(missing, collapse = ", "))
  py_install(missing, method = "conda", envname = "r-reticulate")
}

# 🛠️ Force protobuf downgrade to avoid TensorFlow/keras crash
message("Ensuring compatible protobuf version for TensorFlow...")
py_install("protobuf==3.20.3", pip = TRUE, envname = "r-reticulate")

