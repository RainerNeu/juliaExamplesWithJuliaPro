using DataFrames
using VegaLite
using CSV

const inputFile = "test.csv";

# Loading csv-File with Portfolio-Data
rawDataDf = CSV.File(
    inputFile,
    delim = ';',
    decimal = '.',
    missingstrings = ["", "0.0"],
) |> DataFrame!

show(rawDataDf);

plt = rawDataDf |> @vlplot(
        mark=:point,
        x=:profit,
        y=:max_dd,
        title="Title Of chart",
        width = 800,
        height = 400,
        color=:portfolio_Name
        )

plt |> display

save("C:\\myplot.png", plt)
