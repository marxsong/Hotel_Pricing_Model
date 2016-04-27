# Hotel Pricing Model
This is the hotel pricing model by marxsong @@imike.com

## 本周完成：

1、酒店地址密度对酒店议价能力影响；（1天）

2、区域内活动对区域内酒店价格影响；（1天）


## 下周完成3种数据源整理以及初步爬虫：

3、区域基准价确定因素：

	区域平均房价、区域租金水平、区域人口密度、区域GDP水平、区域CPI大小；


## 下下周完成4种数据源整理以及初步爬虫：

4、酒店价格调整确定因素：

	酒店周边信息、酒店基础信息（工商信息网站）、酒店周边餐馆密度、
	酒店密度 、酒店实时搜索热度、节假日因素、天气状况


## 技术提供因子：

a、动态因子：

周边酒店价格、房态、当前价格、浏览量、撮合成功率、时间点、淡旺季、用户评价

b、静态因子：

所在城市属性（确定城市基准价）、地理位置、周边酒店密度、配套设施、居民收入水平



## 具体因素理解：

- 1、区域活动热度 --- 活动时间、地点、规模等；

- 2、区域内人口密度 --- 区域人口数/区域面积；
 
- 3、区域内餐馆密度 --- 区域餐馆数/区域面积；

- 4、区域GDP水平 --- 反映地区经济水平；

- 5、商圈热度 --- 筛选热门商圈；

- 6、天气状况

- 7、淡旺季 --- 考虑节假日因素

- 8、酒店周边信息----1\3公里范围信息（学校、医院、餐馆、酒店、商场、交通、娱乐等）

- 9、区域平均房价 -- 按照搜房网等网上房产中介爬取数据确定

- 10、区域租金水平 -- 按照搜房网等网上房产中介爬取数据确定

- 11、区域CPI大小 -- 按照地方政府公布的区域内物价等信息确定

- 12、周边酒店价格 -- 同质化酒店（3km范围、相同星级、相同商圈）的相同房型

- 13、房态 -- 酒店是否满房等因素

- 14、当前价格 -- 酒店当前价格是否过低等客服反馈

- 15、浏览量 -- 当前酒店被详细浏览次数，确定酒店热度

- 16、撮合成功率 -- 按照酒店月成功撮合率，确定酒店等级调整价格

- 17、时间点  -- 用户预订时间点，考虑不同时间点上价格是否需要调整

- 18、用户评价 -- 用户对酒店的反馈信息，调整酒店状态和价格

- 19、所在城市属性（确定城市基准价） --- 包括上述区域平均房价、区域租金水平、区域人口密度、区域GDP水平、区域CPI大小等

- 20、地理位置  -- 酒店所处地理位置是否为城市热门区域

- 21、周边酒店密度  -- 1/3/5km内同质化酒店数目

- 22、配套设施  -- 酒店基础设施完善程度

- 23、居民收入水平 -- 区域内居民工资平均水平



[![Build Status](https://travis-ci.org/rstudio/shiny.png)](https://travis-ci.org/rstudio/shiny)

Shiny is a new package from RStudio that makes it incredibly easy to build interactive web applications with R.

For an introduction and examples, visit the [Shiny homepage](http://www.rstudio.com/shiny/).

## Features

* Build useful web applications with only a few lines of code&mdash;no JavaScript required.
* Shiny applications are automatically "live" in the same way that spreadsheets are live. Outputs change instantly as users modify inputs, without requiring a reload of the browser.
* Shiny user interfaces can be built entirely using R, or can be written directly in HTML, CSS, and JavaScript for more flexibility.
* Works in any R environment (Console R, Rgui for Windows or Mac, ESS, StatET, RStudio, etc.)
* Attractive default UI theme based on [Bootstrap](http://getbootstrap.com/2.3.2/).
* A highly customizable slider widget with built-in support for animation.
* Pre-built output widgets for displaying plots, tables, and printed output of R objects.
* Fast bidirectional communication between the web browser and R using the [httpuv](https://github.com/rstudio/httpuv) package.
* Uses a [reactive](http://en.wikipedia.org/wiki/Reactive_programming) programming model that eliminates messy event handling code, so you can focus on the code that really matters.
* Develop and redistribute your own Shiny widgets that other developers can easily drop into their own applications (coming soon!).

## Installation

To install the stable version from CRAN, simply run the following from an R console:

```r
install.packages("shiny")
```

To install the latest development builds directly from GitHub, run this instead:

```r
if (!require("devtools"))
  install.packages("devtools")
devtools::install_github("shiny", "rstudio")
```

## Getting Started

To learn more we highly recommend you check out the [Shiny Tutorial](http://rstudio.github.com/shiny/tutorial). The tutorial explains the framework in-depth, walks you through building a simple application, and includes extensive annotated examples.

We hope you enjoy using Shiny. If you have general questions about using Shiny, please use the Shiny [mailing list](https://groups.google.com/forum/#!forum/shiny-discuss). For bug reports, please use the [issue tracker](https://github.com/rstudio/shiny/issues).

## License

The shiny package is licensed under the GPLv3. See these files in the inst directory for additional details:

- COPYING - shiny package license (GPLv3)
- NOTICE  - Copyright notices for additional included software
