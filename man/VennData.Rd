% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SpEXP.R
\name{VennData}
\alias{VennData}
\title{Get the details of the Venn Diagram}
\usage{
VennData(
  P1_RPM,
  P2_RPM,
  F1_RPM,
  type,
  homoeologs,
  rpm_threshold = 1,
  output_file = "venn_list"
)
}
\arguments{
\item{P1_RPM}{A data frame. The RPM table of genes in P1 species. For the RPM table, the first column is the gene identifier, and other columns are the RPM values of the genes in each biological replicate.}

\item{P2_RPM}{A data frame. The RPM table of genes in P2 species.}

\item{F1_RPM}{A data frame. The RPM table of genes in P2 species.}

\item{type}{Character. "sRNA" or "mRNA".}

\item{homoeologs}{A data frame. Orthologous relationships of genes in the parental species and their progeny. Only required when the 'type' is 'mRNA'.}

\item{rpm_threshold}{A numeric. Threshold for filtering out the lowly expressed genes. The default is 1 (the average RPM of all replicates).}

\item{output_file}{"venn_list", "P1_specific", "P2_specific", "F1_specific", or "all_common".}
}
\value{
A data frame.
}
\description{
Get the information for each region of the venn diagram.
}
\details{
The 'homoeologs' table contains the orthologs pairs. In detail, the first column is the group name (unique) of homoeologs among three species (Parents: P1; P2, Progeny: F1), the second column is the Gene ID of P1, the third column is the Gene ID of P2. And the fourth column and fifth columns are the identifier of F1 orthologs derived from P1 and P2 ancestors, respectively (e.g. "Homoeolog1	BraA01t00004Z	BolC01g000040.2J BnA01g0000030.1 BnC01g0424620.1").
}
\examples{
#output_file = "venn_list"
venn_list <- VennData(P1_RPM = P1_miRNA_rpm,
                      P2_RPM = P2_miRNA_rpm,
                      F1_RPM = F1_miRNA_rpm,
                      type="sRNA",rpm_threshold = 1,
                      output_file = "venn_list")
##output_file = "P1_specific"
P1_specific <- VennData(P1_RPM = P1_miRNA_rpm,
                          P2_RPM = P2_miRNA_rpm,
                          F1_RPM = F1_miRNA_rpm,
                          type="sRNA",rpm_threshold = 1,
                          output_file = "P1_specific")
##output_file = "P2_specific"
P2_specific <- VennData(P1_RPM = P1_miRNA_rpm,
                          P2_RPM = P2_miRNA_rpm,
                          F1_RPM = F1_miRNA_rpm,
                          type="sRNA",rpm_threshold = 1,
                          output_file = "P2_specific")
##output_file = "F1_specific"
F1_specific <- VennData(P1_RPM = P1_miRNA_rpm,
                          P2_RPM = P2_miRNA_rpm,
                          F1_RPM = F1_miRNA_rpm,
                          type="sRNA",rpm_threshold = 1,
                          output_file = "F1_specific")
##output_file = "all_common"
all_common <- VennData(P1_RPM = P1_miRNA_rpm,
                         P2_RPM = P2_miRNA_rpm,
                         F1_RPM = F1_miRNA_rpm,
                         type="sRNA",rpm_threshold = 1,
                         output_file = "all_common")
}
