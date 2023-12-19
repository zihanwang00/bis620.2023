test_that("clean_bio() works", {
  data(biomark)
  expect_snapshot(biomark %>% head(20) %>% clean_biomark())
})
