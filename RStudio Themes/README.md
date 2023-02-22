<h1 align="center">RStudio Theme Configuration</h1>

<h2 align="center">Theme Preview</h2>

<div align="center">
<table>
  <tr>
    <th>Nord</th>
    <th>One Dark</th>
  </tr>
  <tr>
    <td><img src="/RStudio%20Themes/README.assets/Nord%20Theme%20Preview.png" width="500" /></td>
    <td><img src="/RStudio%20Themes/README.assets/One-Dark%20Theme%20Preview.png" width="500" /></td>
  </tr>
</table>
</div>

<h2 align="center">Installation</h2>

<h3 align="center">Method 1 - Using Command Line</h3>
If you're comfortable installing theme from the console and do not have `rstudioapi` installed then you can copy and run the following in your console:
```r
install.packages("rstudioapi")
```

or  if you have `devtools`, use `devtools` to install `rstudioapi` by running the blow command in your console:
```r
# install.packages("devtools")
devtools::install_github("rstudio/rstudioapi")
```

Then run the following in your console:
```r
# to install One-Dark theme
rstudioapi::addTheme("https://raw.githubusercontent.com/Sang-Buster/Miscellaneous-Configuration/main/RStudio%20Themes/One-Dark.rstheme", apply = TRUE, force=TRUE)
```

```r
# to install Nord theme
rstudioapi::addTheme("https://raw.githubusercontent.com/Sang-Buster/Miscellaneous-Configuration/main/RStudio%20Themes/Nord.rstheme", apply = TRUE, force=TRUE)
```

---

<h3 align="center">Method 2 - Download Manually</h3>
You can install this theme by downloading the `.rstheme` file above, then go to the menu bar of your RStudio IDE, find `Tools>Global Options>Appearance`, and add the `.rstheme` file to the location you downloaded from above.

---

<h3 align="center">Method 3 - - Download Manually</h3>
If you want the theme to show up in the `Editor Themes:` panel under `Tools> Global Options > Appearance`, follow the method below: 

1. Go to your RStudio installation path, find the folder named `themes` , folder path may differ between operating systems. (I.e., in Windows, the default path may be located at `C:\Program Files\RStudio\resources\themes`, where other `.rstheme` files are also located in there. In Linux, the default path may be located at `/home/usr_name/.config/rstudio/themes`) 

2. Download the `One-Dark.rstheme` or `Nord.rstheme` above, move the `.rstheme` file into `themes` folder.

3. Apply the theme by going into RStudio IDE, in the menu bar, find `Tools > Global Options > Appearance > Editor theme:`, select the theme you want, and click `Apply` to enjoy! :)

Note: After you update RStudio in Windows using the first/third method, the theme will **DISAPPEAR** if you have put the `.rstheme` file inside RStudio installation folder, because updating RStudio in Windows is basically the same as reinstalling it.
