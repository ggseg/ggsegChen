# chenTh ----
devtools::load_all("../../ggsegExtra/")
devtools::load_all(".")

chenTh <- ggsegExtra::make_ggseg3d_2_ggseg(chenTh_3d,
                                       steps = 1:7,
                                       smoothness = 8,
                                       keep = 0.05,
                                       output_dir = "~/Desktop/test/")


ggseg(atlas=chenTh, show.legend = FALSE,
      colour = "black", position="stacked",
      mapping = aes(fill=region)) +
  scale_fill_brain()


usethis::use_data(chenTh,
                  internal = FALSE,
                  overwrite = TRUE,
                  compress="xz")

# chenAr ----

chenAr <- ggsegExtra::make_ggseg3d_2_ggseg(chenAr_3d,
                                           steps = 1:7,
                                           smoothness = 8,
                                           keep = 0.05,
                                           output_dir = "~/Desktop/test/")

ggseg(atlas=chenAr, show.legend = FALSE,
      colour = "black", position="stacked",
      mapping = aes(fill=region)) +
  scale_fill_brain()


usethis::use_data(chenAr,
                  internal = FALSE,
                  overwrite = TRUE,
                  compress="xz")

# palettes ----


chenTh_pal <- make_palette_ggseg(chenTh_3d)
chenAr_pal <- make_palette_ggseg(chenAr_3d)

brain_pals = c(chenTh_pal, chenAr_pal)
usethis::use_data(brain_pals, internal = TRUE, overwrite = TRUE)
