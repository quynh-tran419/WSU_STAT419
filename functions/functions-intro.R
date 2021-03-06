# Handshake

is.wholenumber = function(x, tol = .Machine$double.eps^0.5)  
{
  # x = 1.3
  abs(x - round(x)) < tol;
}

# Alt-F-S
handShake = function(n=1, plotMe=FALSE)
{
  if(n < 1) { stop("n must be greater than 0"); }  # warning
  if(!is.wholenumber(n)) { stop("n must be an integer"); }
  h = n*(n-1)/2;
  # return( n*(n-1)/12 );
  
  if(plotMe)
  {
    plot(n,h);
    
    # draw a circle
    draw.circle(n,h,3,nv=1000,border="yellow",col=c("light blue"))
    
    # loop through "n" points
    #empty plot
    plot(x=NA, y=NA, xlim=c(1,n*2), ylim=c(1,n*2),xlab="", ylab="")
    # add points
    for (i in 1:n) {
      points(x=rep(n,n), y=1:n, pch=20,col="purple")
    }
    
    plot(x=NA, y=NA, xlim=c(1,n*2), ylim=c(1,n*2),xlab="", ylab="")
    
    #connect "n-1" elements
    for (i in 1:n) {
      points(x=rep(n,n), y=1:n, pch=20,col="red")
      lines(n,n, type="h", col="blue")
    }
  }
  h;
}
handShake(5,TRUE)

# Declaration of Independence

declaratioIndependence_letter = function(original, unanimous, plotMe=TRUE)
{
  # read the txt files & split the character vector into substrings
  oData <- read_file(original)
  fData <- read_file(unanimous)
  fData_split <- strsplit(fData,"")[[1]]
  oData_split <- strsplit(oData,"")[[1]]
  
  # a list of letter that are not going into OTHER
  al <- c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," ")
  
  # assign counter for each letter
  sym <- 0
  counta <- 0
  countb <- 0
  countc <- 0
  countd <- 0
  counte <- 0
  countf <- 0
  countg <- 0
  counth <- 0
  counti <- 0
  countj <- 0
  countk <- 0
  countl <- 0
  countm <- 0
  countn <- 0
  counto <- 0
  countp <- 0
  countq <- 0
  countr <- 0
  counts <- 0
  countt <- 0
  countu <- 0
  countv <- 0
  countw <- 0
  countx <- 0
  county <- 0
  countz <- 0
  
  #iterate over each letter in the text and count
  for (i in oData_split) {
    if (i=="a") counta = counta+1
    if (i=="b") countb = countb+1
    if (i=="c") countc = countc+1
    if (i=="d") countd = countd+1
    if (i=="e") counte = counte+1
    if (i=="f") countf = countf+1
    if (i=="g") countg = countg+1
    if (i=="h") counth = counth+1
    if (i=="i") counti = counti+1
    if (i=="j") countj = countj+1
    if (i=="k") countk = countk+1
    if (i=="l") countl = countl+1
    if (i=="m") countm = countm+1
    if (i=="n") countn = countn+1
    if (i=="o") counto = counto+1
    if (i=="p") countp = countp+1
    if (i=="q") countq = countq+1
    if (i=="r") countr = countr+1
    if (i=="s") counts = counts+1
    if (i=="t") countt = countt+1
    if (i=="u") countu = countu+1
    if (i=="v") countv = countv+1
    if (i=="w") countw = countw+1
    if (i=="x") countx = countx+1
    if (i=="y") county = county+1
    if (i=="z") countz = countz+1
    if (is.element(i,al)==FALSE) sym = sym +1
  }
  
  symf<-0
  # assign the result to variable (optional)
  a<-c(counta)
  b<-c(countb)
  c<-c(countc)
  d<-c(countd)
  e<-c(counte)
  f<-c(countf)
  g<-c(countg)
  h<-c(counth)
  i<-c(counti)
  j<-c(countj)
  k<-c(countk)
  l<-c(countl)
  m<-c(countm)
  n<-c(countn)
  o<-c(counto)
  p<-c(countp)
  q<-c(countq)
  r<-c(countr)
  s<-c(counts)
  t<-c(countt)
  u<-c(countu)
  v<-c(countv)
  w<-c(countw)
  x<-c(countx)
  y<-c(county)
  z<-c(countz)
  OTHER <-c(sym)
  
  # Do the same thing with the second txt file
  countaf <- 0
  countbf <- 0
  countcf <- 0
  countdf <- 0
  countef <- 0
  countff <- 0
  countgf <- 0
  counthf <- 0
  countif <- 0
  countjf <- 0
  countkf <- 0
  countlf <- 0
  countmf <- 0
  countnf <- 0
  countof <- 0
  countpf <- 0
  countqf <- 0
  countrf <- 0
  countsf <- 0
  counttf <- 0
  countuf <- 0
  countvf <- 0
  countwf <- 0
  countxf <- 0
  countyf <- 0
  countzf <- 0
  
  for (i in fData_split) {
    if (i=="a") countaf = countaf+1
    if (i=="b") countbf = countbf+1
    if (i=="c") countcf = countcf+1
    if (i=="d") countdf = countdf+1
    if (i=="e") countef = countef+1
    if (i=="f") countff = countff+1
    if (i=="g") countgf = countgf+1
    if (i=="h") counthf = counthf+1
    if (i=="i") countif = countif+1
    if (i=="j") countjf = countjf+1
    if (i=="k") countkf = countkf+1
    if (i=="l") countlf = countlf+1
    if (i=="m") countmf = countmf+1
    if (i=="n") countnf= countnf+1
    if (i=="o") countof = countof+1
    if (i=="p") countpf = countpf+1
    if (i=="q") countqf = countqf+1
    if (i=="r") countrf= countrf+1
    if (i=="s") countsf = countsf+1
    if (i=="t") counttf = counttf+1
    if (i=="u") countuf = countuf+1
    if (i=="v") countvf = countvf+1
    if (i=="w") countwf = countwf+1
    if (i=="x") countxf = countxf+1
    if (i=="y") countyf = countyf+1
    if (i=="z") countzf = countzf+1
    if (is.element(i,al)==FALSE) symf = symf +1
  } 
  af<-c(countaf)
  bf<-c(countbf)
  cf<-c(countcf)
  df<-c(countdf)
  ef<-c(countef)
  ff<-c(countff)
  gf<-c(countgf)
  hf<-c(counthf)
  iff<-c(countif)
  jf<-c(countjf)
  kf<-c(countkf)
  lf<-c(countlf)
  mf<-c(countmf)
  nf<-c(countnf)
  of<-c(countof)
  pf<-c(countpf)
  qf<-c(countqf)
  rf<-c(countrf)
  sf<-c(countsf)
  tf<-c(counttf)
  uf<-c(countuf)
  vf<-c(countvf)
  wf<-c(countwf)
  xf<-c(countxf)
  yf<-c(countyf)
  zf<-c(countzf)
  OTHERf <-c(symf)
  
  # add the occurrence of each letter from both files into a dataframe
  df<- data.frame("a"=c(a,af),
                  "b"=c(b,bf),
                  "c"=c(c,cf),"d"=c(d,df),
                  "e"=c(e,ef), "f"=c(f,ff),
                  "g"=c(g,gf), "h"=c(h,hf),"i"=c(counti,iff), "j"=c(j,jf),"k"=c(k,kf),"l"=c(l,lf),"m"=c(m,mf),"n"=c(n,nf),"o"=c(o,of),"p"=c(p,pf),"q"=c(q,qf),"r"=c(r,rf),"s"=c(s,sf),"t"=c(t,tf),"u"=c(u,uf),"v"=c(v,vf),"w"=c(w,wf),"x"=c(x,xf),"y"=c(y,yf),"z"=c(z,zf))
  
  # set the row name for the dataframe
  rownames(df)<-c("Original", "Unanimous")
  print(df)
  
  # the margin of the table is too large, reduce the size of it
  par(mar=c(3,3,3,3))
  
  # visualize the data through boxplot and name the graph
  boxplot(df,main= "The frequency of each letter in the original & final Declaration of Independence" )
  
  
}
declaratioIndependence_letter("/Library/github/quynh_tran/WSU-STAT419_2021/datasets/declaration/draft.txt","/Library/github/quynh_tran/WSU-STAT419_2021/datasets/declaration/final.txt")

# Compute Determinant

computeDeterminant= function(input, nrow=3, ncol=3, plot=FALSE)
{
  # create the matrix, name rows and columns
  mat <- matrix(input, 3, 3)
  rownames(mat) <- c("R1","R2","R3")
  colnames(mat) <- c("C1","C2","C3")
  print(mat)
  
  # assign the location of each number in the matrix for  easier calculation
  a <- mat[c(1),c(1)]
  b <- mat[c(1),c(2)]
  c <- mat[c(1),c(3)]
  
  d <- mat[c(2),c(1)]
  e <- mat[c(2),c(2)]
  f <- mat[c(2),c(3)]
  
  g <- mat[c(3),c(1)]
  h <- mat[c(3),c(2)]
  i <- mat[c(3),c(3)]
  
  # compute the determinant manually
  ans <- sum(a*(i*e-f*h),-b*(d*i-f*g),c*(d*h-e*g))
  
  #print out the answer
  cat("The Determninant of the 3x3 matrix you just entered is", ans)
}
computeDeterminant(c(1:9))source('/Library/github/quynh_tran/WSU-STAT419_2021/functions/functions-intro.R')
