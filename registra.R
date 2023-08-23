source('executa.r')

for (i in 1:length(samples)) {
    
    filename <- ifelse(nchar(i) == 1, paste0('simulacao0', i, '.RData'), paste0('simulacao', i, '.RData'))
    result <- samples[[i]]
    
    lista <- list()
    
    for (j in 1:length(planos[[i]])) {
        lista[[names(planos[[i]][j])]] <- planos[[i]][[j]]
    }
    
    env <- new.env()
    
    assign("result", result, envir = env)
    for (name in names(lista)) {
        assign(name, lista[[name]], envir = env)
    }
    
    save(list = ls(env), file = paste0(getwd(), '/resultados/', filename), envir = env)
}