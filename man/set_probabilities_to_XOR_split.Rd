% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_probabilities_to_XOR_split.R
\name{set_probabilities_to_XOR_split}
\alias{set_probabilities_to_XOR_split}
\title{Specify the probabilities of a XOR-split}
\usage{
set_probabilities_to_XOR_split(process, split, first_elements = c(),
  probabilities = c(), prob_to_continue = 0)
}
\arguments{
\item{process}{processmodel}

\item{split}{The split object. Accepts a list object created with the add_XOR_split function OR with the import_BPMN function}

\item{first_elements}{a character vector containing the name of the first element of each alternative path of the XOR-GATE structure.}

\item{probabilities}{a numeric vector containing the probability of flowing through each alternative path.the sum should be equal to 1. The sequence of the branches should be identical to the sequence in the first_elements vector}

\item{prob_to_continue}{a numeric between 0 and 1 indicating the probability of continuing without entering the loop.}
}
\description{
A XOR-split is used in BPMN to model a XOR-GATE structure or to model a LOOP.
In the case of a XOR-GATE structure, this function can be used to specify the probability to flow through one of the alternative paths by using the parameters first_elements and probabilities.
In the case of a LOOP, this function can be used to specify the probability to continue (the probability that you don't go into the loop) by using the parameter prob_to_continue
Note that this information should be added before running the transform_BPMN() function (see ?transform_BPMN())
}
