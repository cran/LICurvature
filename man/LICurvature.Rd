\name{LICurvature}
\alias{LICurvature}
\title{
Assement on Local Influence in  Case-Weight for the Linear Regression Models
}
\description{This Package presents a general method for assessing the local influence of minor perturbations of
case-weight for the linear regression models. The method relies on a well-behaved likelihood and certain elementary ideas from differential geometry, and seems to provide a relatively simple, unified approach for handling
a variety of problems. A distinguishing feature of this method is its use of log-likelihood contours
to gauge influence. Although this Package is concerned primarily with local influence, some discussion of assessing global
influence, which is a significantly more difficult problem. We use geometric normal curvatures to characterize the behaviour of an influence graph around omega (Generally, omega can reflect any well-defined perturbation scheme and thus is not restricted to be a collection of case weights.),although the essential results can be obtained by using less descriptive
 We  used it in case-Weight for the linear regression models, also recommended a general reference for deciding whether there is notable local sensitivity or not


}
\usage{
LICurvature(ini = NA,X,Xstar,y,n,p, ...)
}
\arguments{
\item{ini}{Initial values}
\item{X}{Covariate matrix}
\item{Xstar}{Design matrix}
\item{y}{Continuous response}
\item{n}{Design matrix}
\item{p}{The number of covariates}
\item{\dots}{Other arguments}}
\details{
Models for LICurvature are specified symbolically. A typical model has the form response ~ terms   where response is the (numeric) continuous response vector and  terms are a series of terms which specifies a linear predictor for responses. 
}
\value{
 \item{lmax}{Eign vector}
 \item{Clmax}{Normal curvatures for case weight in linear regression models }
}
\references{
Cook, R. D. (1986). Assessment of local influence (with discussion). J. Roy. Statist. Soc. Ser. B 48: 133-169. 
}
\author{
Bahrami Samani and ParsaMaram
}
\note{
Supportted by Shahid Beheshti University
}
\seealso{
\code{\link{nlminb}},\code{\link{eigen}}
}
\examples{
data("Bahrami1")
gender<-Bahrami1$ GENDER
duration <-Bahrami1$ DURATION
y<-Bahrami1$  BMI
X=cbind(gender,duration )
Xstar=cbind(1,X)
p=2;
n=15;
ini=c(0,rep(1,p));

LICurvature(ini,X=X,Xstar=Xstar,y=y,n=n,p=p)


## The function is currently defined as
structure(function (x, ...) 
UseMethod("LICurvature"), class = "LICurvature")
}
\keyword{sensivity}
