library("ggplot2")

args = commandArgs(trailingOnly = TRUE)
inFILE = args[1]
samps = args[2]
heatmap_plot = args[3]

#intensity file
inFILE <- read.table(file='int.tab',
                     check.names = FALSE,
                     header = TRUE,
                     sep = "\t")
inFILE

#sample file
samps <- read.table(file='samples.tab',
                    check.names = FALSE,
                    header = TRUE,
                    row.names = 1,
                    sep = "\t")
samps

#Data matrix
df <- data.matrix(inFILE[-1])
df[is.na(df)] = 0
df

# Give the chart file a name.
png(file="heatmap_plot")

# Plot the chart.
heatmap(df, Rowv = NA)

# Save the file.
dev.off()