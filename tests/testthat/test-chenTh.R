# ggseg ----
context("test-chenTh-adapt_scales")
test_that("Check that ggseg:::adapt_scales is working", {
  expect_equal(mode(ggseg:::adapt_scales(unnest(chenTh, ggseg))), "list")
})

context("test-chenTh-palettes")
test_that("check new palettes work", {
  expect_equal(length(brain_pal("chenTh", package = "ggsegChen")), 12)

  expect_error(brain_pal("chenTh"), "not a valid")

  expect_true(all(names(brain_pal("chenTh", package = "ggsegChen")) %in% chenTh$region))
})

context("test-chenTh-ggseg-atlas")
test_that("atlases are true ggseg atlases", {

  expect_true(is_ggseg_atlas(chenTh))

})

context("test-chenTh-ggseg")
test_that("Check that polygon atlases are working", {
  expect_is(ggseg(atlas = chenTh),c("gg","ggplot"))

  expect_is(ggseg(atlas = chenTh, mapping = aes(fill = region)),
            c("gg","ggplot"))

  expect_is(ggseg(atlas = chenTh, mapping = aes(fill = region)) +
              scale_fill_brain("chenTh", package = "ggsegChen"),
            c("gg","ggplot"))

  expect_is(ggseg(atlas = chenTh, mapping = aes(fill = region)) +
              scale_fill_brain("chenTh", package = "ggsegChen"),
            c("gg","ggplot"))

  expect_is(ggseg(atlas = chenTh, mapping=aes(fill=label),
                  position="stacked"), c("gg","ggplot"))

  expect_is(ggseg(atlas = chenTh, mapping=aes(fill=label), adapt_scales = F ),
            c("gg","ggplot"))

})


# ggseg3d ----
