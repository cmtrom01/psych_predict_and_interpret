# load library
require(neuralnet)
require(NeuralNetTools)

df <- read.csv("/Users/christrombley/Desktop/EAT Lab/B:P Predict NN Spring '19/Data/nueralNetDataBingeHeader.csv")
# fit neural network

head(df)

nn=neuralnet(diagnosis_B~X1+X1.1+X2+X3+X4+X5+X6+X7+X8+X9+X10+X11+X12+X13+X14+X15+X16+X17+X18+X19+X20+X21+X22+X23+X24+X25+X26+X27+X28+X29+X30+X31+X32+X33+X34+X35+X36+X37+X38+X39+X40+X41+X42+X43+X44+X45+X46+X47+X48+X49+X50+X51,data=df, hidden=50,act.fct = "logistic",
             linear.output = FALSE)

round(garson(nn, bar_plot=FALSE),3)

garson(nn)

require(ggplot2)
cols<-rainbow(51)
garson(nn) + scale_y_continuous('Rel.Importance', limits = c(0,0.25)) + scale_fill_gradientn(colours=cols) + scale_colour_gradientn(colours=cols)



plotnet(mod_in=nn)

lekprofile(mod_in=modcount) + ylab("Mort.likelihood")

require(lime)
explanation<-lime(dt)
