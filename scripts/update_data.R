# Update data

# Author: Bill Behrman
# Version: 2020-06-16

# Parameters
  # Script to update unemployment data
script_unemployment <- here::here("scripts/unemployment.R")
  # Script to download new Household Pulse PUF data
script_pulse_download_puf <- here::here("scripts/pulse_download_puf.R")
  # Script to download new Household Pulse table date
script_pulse_download_tables <- here::here("scripts/pulse_download_tables.R")
  # Script to calculate state data
script_state <- here::here("scripts/state.R")
  # Script to calculate county data
script_counties <- here::here("scripts/counties.R")

#===============================================================================

cli::cat_line(cli::rule(str_glue("Updating unemployment data")))
source(script_unemployment)

cli::cat_line(cli::rule(str_glue("Downloading new Household Pulse PUF data")))
source(script_pulse_download_puf)

cli::cat_line(cli::rule(str_glue("Downloading new Household Pulse table data")))
source(script_pulse_download_tables)

cli::cat_line(cli::rule(str_glue("Calculate state data")))
source(script_state)

cli::cat_line(cli::rule(str_glue("Calculate county data")))
source(script_counties)