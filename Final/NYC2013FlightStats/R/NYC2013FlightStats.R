
library(ggplot2)

sort_airports_by_delay = function(frame) {
    return(aggregate(frame$dep_delay, by = list(frame$origin), FUN = function(x) mean(x, na.rm = TRUE)))
}

plot_flight_times = function(frame) {
    ggplot(frame, aes(x = distance, y = air_time)) +
        geom_line()
}

flights_per_origin_chart = function(frame) {
    counts = as.data.frame(table(frame$origin))
    ggplot(counts, aes(x = "", y = Freq, fill = Var1)) +
        geom_bar(stat = "identity")  +
        coord_polar("y", start = 0) +
        labs(x = "", y = "", title = "Departing Flights Per Airport", fill = "Airports")
}

destinations_sorted = function(frame) {
    dests = as.data.frame(table(frame$dest)) 
    names(dests) = c("dest", "count")
    dests = dests[order(dests$count, decreasing = TRUE),]
    return(dests)
}
