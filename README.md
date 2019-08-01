
<!-- README.md is generated from README.Rmd. Please edit that file -->

# id\_and\_location

<!-- badges: start -->

<!-- badges: end -->

身份证前6位表示用户出生地的行政区单位，提取全集，目前有几个方案

  - [x]
    目前我找到的数据，见[数据](output/20181218-lijiaxiang-id_first_6_digits.csv)。
    数据是一个 R 官方包 [Ricetl](https://github.com/JiaxiangBU/Ricetl) 导出的。
  - [ ] 参考一些数据库中用户身份证前6位的唯一值，待积累
  - [x] SQL 的静态数据表
    [cnblogs](http://www.cnblogs.com/jiqing9006/p/5849874.html)，但是不包含经纬度。
  - 爬虫网站见
    [查询网](http://qq.ip138.com/idsearch/index.asp?action=idcard&userid=653881199301010303&B1=%B2%E9+?)，非官方，准确度不能保证。

如果部分市县抓取不到经纬度，采用的模糊匹配方式如下。 身份证号码，12-34-56，分别对应省、市、县，

  - 如果一个`xx-xx-xx`爬取不出来，可以用`xx-xx`代替，即对应的市区
  - 如果一个`xx-xx`爬取不出来，可以用`xx`代替，即对应的省份
  - 如果一个`xx`爬取不出来，就保持为空了

## 数据下载

[数据下载](output/190801-lijiaxiang-id6_location_lon_lat.xlsx)

数据量为 5229 条。
