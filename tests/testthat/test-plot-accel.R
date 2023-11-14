test_that("plot_accel() works", {
  data(accel)
  vdiffr::expect_doppelganger("plot-accel-1.new",
                              accel |> head(100) |> plot_accel())
})

# if change:
# data(accel)
# vdiffr::expect_doppelganger("plot-accel-1",
#                             accel |> head(10) |> plot_accel())
# will have Failure
