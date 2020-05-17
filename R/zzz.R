###
###

.pkgname <- "BSgenome.SARSCoV2"

.seqnames <- c("SARS_CoV2")

.circ_seqs <- NULL

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="SARS-CoV-2",
        common_name="Covid-19",
        provider="NCBI",
        provider_version="1.0.0",
        release_date="JAN.2020",
        release_name="SARS-CoV-2",
        source_url="https://www.ncbi.nlm.nih.gov/nuccore/NC_045512",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "SARSCoV2"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

