# ggseg ----
context("test-chenAr-adapt_scales")
test_that("Check that ggseg:::adapt_scales is working", {
  expect_equal(mode(ggseg:::adapt_scales(unnest(chenAr, ggseg))), "list")
})

context("test-chenAr-palettes")
test_that("check new palettes work", {
  expect_equal(length(brain_pal("chenAr", package = "ggsegChen")), 12)

  expect_error(brain_pal("chenAr"), "not a valid")

  expect_true(all(names(brain_pal("chenAr", package = "ggsegChen")) %in% chenAr$region))
})

context("test-chenAr-ggseg-atlas")
test_that("atlases are true ggseg atlases", {

  expect_true(is_ggseg_atlas(chenAr))

})

context("test-chenAr-ggseg")
test_that("Check that polygon atlases are working", {
  expect_is(ggseg(atlas = chenAr),c("gg","ggplot"))

  expect_is(ggseg(atlas = chenAr, mapping = aes(fill = region)),
            c("gg","ggplot"))

  expect_is(ggseg(atlas = chenAr, mapping = aes(fill = region)) +
              scale_fill_brain("chenAr", package = "ggsegChen"),
            c("gg","ggplot"))

  expect_is(ggseg(atlas = chenAr, mapping = aes(fill = region)) +
              scale_fill_brain("chenAr", package = "ggsegChen"),
            c("gg","ggplot"))

  expect_is(ggseg(atlas = chenAr, mapping=aes(fill=label),
                  position="stacked"), c("gg","ggplot"))

  expect_is(ggseg(atlas = chenAr, mapping=aes(fill=label), adapt_scales = F ),
            c("gg","ggplot"))

})


# ggseg3d ----
