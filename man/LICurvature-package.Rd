\name{LICurvature-package}
\alias{LICurvature-package}
\docType{package}
\title{Assement on Local Influence in  Case-Weight for the Linear Regression Models

}
\description{This Package presents a general method for assessing the local influence of minor perturbations of
case-weight for the linear regression models. The method relies on a well-behaved likelihood and certain elementary ideas from differential geometry, and seems to provide a relatively simple, unified approach for handling
a variety of problems. A distinguishing feature of this method is its use of log-likelihood contours
to gauge influence. Although this Package is concerned primarily with local influence, some discussion of assessing global
influence, which is a significantly more difficult problem. We use geometric normal curvatures to characterize the behaviour of an influence graph around omega (Generally, omega can reflect any well-defined perturbation scheme and thus is not restricted to be a collection of case weights.),although the essential results can be obtained by using less descriptive
 We  used it in case-Weight for the linear regression models, also recommended a general reference for deciding whether there is notable local sensitivity or not
}
\details{
\tabular{ll}{
Package: \tab LICurvature\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-06-23\cr
License: \tab GPL (>=2)\cr
}
}
\author{
Bahrami Samani and Parsa Maram

Maintainer: Bahrami Samani <ehsan_bahrami_samani@yahoo.com> 
}
\references{
Cook, R. D. (1986). Assessment of local influence (with discussion). J. Roy. Statist. Soc. Ser. B 48: 133-169. 
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

}
\keyword{package}