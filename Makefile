ARG = App
BaseImg = image.png
AUTHOR = "Generated by Makefile"
VERSION = 1

define newline


endef

define Contents
{
  "images" : [
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "$(ARG)-Icon-29x29@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "$(ARG)-Icon-29x29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "$(ARG)-Icon-29x29@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "$(ARG)-Icon-40x40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "$(ARG)-Icon-40x40@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "$(ARG)-Icon-60x60@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "$(ARG)-Icon-60x60@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "$(ARG)-Icon-20x20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "$(ARG)-Icon-20x20@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "$(ARG)-Icon-20x20@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "$(ARG)-Icon-20x20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "$(ARG)-Icon-29x29@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "$(ARG)-Icon-29x29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "$(ARG)-Icon-40x40@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "$(ARG)-Icon-40x40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "$(ARG)-Icon-76x76@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "$(ARG)-Icon-76x76@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "83.5x83.5",
      "idiom" : "ipad",
      "filename" : "$(ARG)-Icon-83.5x83.5@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "1024x1024",
      "idiom" : "ios-marketing",
      "filename" : "$(ARG)-Icon-1024x1024@1x.png",
      "scale" : "1x"
    }
  ],
  "info" : {
    "version" : $(VERSION),
    "author" : $(AUTHOR)
  }
}
endef

resizedImages: Contents.json
	sips -Z 29 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-29x29@1x.png"
	sips -Z 58 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-29x29@2x.png"
	sips -Z 87 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-29x29@3x.png"
	sips -Z 40 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-40x40@1x.png"
	sips -Z 80 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-40x40@2x.png"
	sips -Z 120 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-40x40@3x.png"
	sips -Z 120 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-60x60@2x.png"
	sips -Z 180 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-60x60@3x.png"
	sips -Z 20 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-20x20@1x.png"
	sips -Z 40 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-20x20@2x.png"
	sips -Z 60 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-20x20@3x.png"
	sips -Z 76 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-76x76@1x.png"
	sips -Z 152 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-76x76@2x.png"
	sips -Z 167 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-83.5x83.5@2x.png"
	sips -Z 1024 $(BaseImg) -o "$(ARG).appiconset/$(ARG)-Icon-1024x1024@2x.png"

Contents.json: $(ARG).appiconset
	export Contents
	echo '$(subst $(newline),\n,${Contents})' > "$(ARG).appiconset/Contents.json";

$(ARG).appiconset:
  ifeq (, $(shell which sips))
  $(error "No sips found in $(PATH). Aborting make")
  endif
	mkdir $(ARG).appiconset

.PHONY: clean

clean:
	rm -rf $(ARG).appiconset