
# pois_spec <- list(distribution = 'poisson', lambda = 2.0, obs = 20)
# norm_spec <- list(distribution = 'normal', mu = 1.2, sigma2 = 1.0, obs = 25)
# bern_spec <- list(distribution = 'bernoulli', p = 0.3, obs = 20)

dist_generator <- function(dist_spec) {
    
    if (dist_spec[['distribution']] == 'poisson') {
        output <- rpois(n = dist_spec[['obs']], lambda = dist_spec[['lambda']])
    }
    
    else if (dist_spec[['distribution']] == 'normal') {
        output <- rnorm(n = dist_spec[['obs']], mean = dist_spec[['mu']], sd = dist_spec[['sigma2']])
    }
    
    else if (dist_spec[['distribution']] == 'bernoulli') {
        output <- rbinom(n = dist_spec[['obs']], size = 1, prob = dist_spec[['p']])
    }
    
    else {
        print('Configurações da distribuições incorretas.')
        break
    }
}
