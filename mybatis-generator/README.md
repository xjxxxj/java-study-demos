# 使用教程

1、配置generatorConfig.properties
- 参数说明：
  - package.model:实体类放的包名
  - package.dao:mapper接口的包名
  - package.mapper:xml映射文件的包名
  - target.project:放生成文件的根文件夹路径
  - target.mapper.project:mapper接口的文件夹路径，和package.dao的值相对应

2、打包（mvn clean install）

3、执行mybatis-generator插件两次（mvn mybatis-generator:generate）

注意事项

- 每次修改了generatorConfig.properties都要重新打包，打包前需要清空之前生成的文件
- mybatis-generator插件执行一次时是没有生成xml文件的，需要执行第二次才能生成
- 可以在cn.siss.mybatis_mygenerator.customer.MyBatisCommentGenerator类中修改自定义的注释格式，修改后需要重新打包。






