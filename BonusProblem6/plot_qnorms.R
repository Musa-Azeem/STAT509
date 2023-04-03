library('pracma')

alpha = 0.05;

# k = linspace(0, 0.5, 100);
k = seq(0,0.5,0.001)

a_l = 1-k*alpha;        # Upper interval
a_u = (1-k)*alpha;      # Lower interval

z_interval = qnorm(1-a_u) - qnorm(1-a_l)

to_plot = data.frame(
    x = k,
    y = z_interval
)

plot(to_plot, col=2, pch=20, type='b', 
    ylab=expression("z"["(1-k)"*alpha]-"z"["(1-k"*alpha*")"]),
    xlab="k")