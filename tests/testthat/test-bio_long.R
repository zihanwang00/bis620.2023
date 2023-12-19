test_that("bio_long() works", {
  data(biomark)
  bio <- biomark %>%
    clean_biomark()
  expect_snapshot(bio_long(bio))
})
