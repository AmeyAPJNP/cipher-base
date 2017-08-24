ver_crassy     = Sys.getenv("CRASSY_VER")
ver_cqlconnect = Sys.getenv("CQLCONNECT_VER")
ver_subprocess = Sys.getenv("SUBPROCESS_VER")

install_github = function(pkg, ver, repo, sep) {
    cat("Installing", pkg, ver, "\n")
    remotes::install_github(file.path(repo, ver, fsep = sep))
}

install_github("crassy", ver_crassy, "AkhilNairAmey/crassy", "@v")
install_github("CQLConnect", ver_cqlconnect, "AkhilNairAmey/CQLConnect", "@v")
install_github("subprocess", ver_subprocess, "lbartnik/subprocess", "@")
