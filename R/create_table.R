table_name <- "opd.id_and_location_ljx"
read_file("analysis/create_table.sql") %>%
    glue::glue() %>%
    clipr::write_clip(allow_non_interactive = TRUE)
