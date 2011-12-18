RIA天地行成都城市精英论坛-持续集成在Flex/AS3开发中的应用
====================================================

FlexAntExample
----------------
简单地演示了怎么编写Ant脚本来构建Flex应用程序，包括<mxmlc>、<asdoc>、<html-wrapper>等任务的使用


FlexAntFlexUnit
----------------
演示了怎样编写Ant脚本来运行单元测试，主要是<flexunit>、<junitreport>任务的使用。

FlexAntIvyExample
-------------------
演示了Ant与Ivy配合来解决依赖的问题，获取Cairngorm3相关组件示例

FlexCustomLibs
--------------------------
演示如何将库发布到自建的nexus仓库

FlexAntIvyResolveExample
--------------------------
从nexus仓库（私服）中获取相应的依赖库


Usage
-------

前提条件：

1. 需要配置FLEX_HOME环境变量。
2. 确定已下载对应的Ant扩展，包括flexTasks.jar或flexunit*.jar，并确保正确地导入了对应的扩展
3. 确定在build.xml中添加的ivy命名空间声明


对于build.xml 直接在命令行下运行 'ant target'

如果是非标准build.xml，例如build_doc.xml，直接在命令行下运行 'ant -f build_doc.xml target'

