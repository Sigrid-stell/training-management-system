# training-management-system

企业内部培训管理系统

记录一个课设项目

**1.** **项目概述**

- 项目的主要功能和目标

  主要功能：

  >  项目的主要功能包括用户管理、培训课程管理、培训报名、培训进度跟踪和培训反馈与评估。

  - 用户管理功能：管理员对用户进行增删改查操作，同时员工可以登录系统并修改个人信息。
  - 培训课程管理功能：管理员能够创建、编辑、删除课程，并管理课程状态，员工则可以查看课程列表和课程详情。
  - 培训报名功能：员工选择感兴趣的课程进行报名或取消报名，系统会记录报名状态供管理员查看。
  - 培训进度跟踪功能：包括管理员标记员工培训完成情况、签到记录出勤情况，以及员工和管理员查询培训进度。
  - 培训反馈与评估功能：员工填写培训反馈，管理员查看反馈并生成统计数据，以优化培训内容。

 

目标：

①　提升培训效率：为企业提供一个高效、灵活的内部培训管理平台，实现培训课程的全流程数字化管理，包括课程创建、员工报名、进度跟踪及反馈评估，提高管理效率和执行效果。

②　优化培训体验：通过智能化功能（如课程推荐、反馈分析等），优化员工培训体验，提升培训参与度和课程满意度，为企业培养更多高素质人才。

③　数据驱动决策：提供全面的数据统计与分析功能，包括培训报名率、出勤率、反馈统计等，为企业的培训效果评估和后续决策提供数据支持。

④　支持灵活扩展：系统采用模块化设计和主流技术架构，方便企业根据业务需求进行功能扩展，支持企业未来的多样化培训场景。

 

- 使用的技术栈

Maven、Spring-boot、Mybatis、MySQL、JavaScript 

 

**2.** **功能描述**

**2.1** **核心功能模块**

| 功能模块         | 描述                                                 |
| ---------------- | ---------------------------------------------------- |
| 登陆功能         | 用户登录系统时根据选择的角色分配权限，进入相应的页面 |
| 人员管理功能     | 管理员可以管理所有人员的信息，对信息进行增删改查     |
| 个人信息管理功能 | 用户可以对自己的个人信息进行修改                     |
| 课程管理功能     | 管理员可以对课程进行增删改查                         |
| 报名管理功能     | 管理员可以查看和修改员工的课程报名信息               |

 

**2.2** **界面功能说明**

①登录界面，管理员和员工可以通过登录界面进入到不同的界面。

![image-20250404193641858](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193641858.png)   

②管理员首页：管理员可以通过侧栏选择功能，在右侧顶栏的箭头处可以退出登录。

 ![image-20250404193723332](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193723332.png)

③员工报名表：管理员可以添加、删除、修改、查看员工报名信息

![image-20250404193734138](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193734138.png)

④课程管理：管理员可以添加、删除、修改、查看课程信息。

 ![image-20250404193836123](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193836123.png)

⑤员工管理：管理员可以添加、修改、删除、查看员工信息。

 ![image-20250404193842099](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193842099.png)

⑥管理员管理：管理员可以查看到其他管理员的信息。

 ![image-20250404193847976](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193847976.png)

⑦个人信息管理：管理员可以修改自己的信息。

 ![image-20250404193852733](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193852733.png)

⑧员工首页：员工可以通过侧栏选择功能。

 ![image-20250404193857815](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193857815.png)

 

**3.** **项目结构设计**

**3.1** **项目整体架构**

**（1）技术架构**

**前端：**JavaScript、CSS

**后端：**Maven、Spring-boot、Mybatis、MySQL

**（2）模块划分**

| 模块       | Api                                                          |
| ---------- | ------------------------------------------------------------ |
| 管理员模块 | /sms/adminController/deleteAdmin  /sms/adminController/getAllAdmin/{pn}/{pageSize}  /sms/adminController/saveOrUpdateAdmin |
| 员工模块   | /sms/gradeController/deleteGrade  /sms/gradeController/getGrades  /sms/gradeController/getGrades/{pn}/{pageSize}  /sms/gradeController/saveOrUpdateGrade |
| 课程模块   | /sms/clazzController/deleteClazz  /sms/clazzController/getClazzs  /sms/clazzController/getClazzsByOpr/{pn}/{pageSize}  /sms/clazzController/saveOrUpdateClazz  /sms/courseController/addOrUpdatecourse  /sms/courseController/delcourseById |
| 报名模块   | /sms/teacherController/deleteTeacher  /sms/teacherController/getTeachers/{pn}/{pageSize}  /sms/teacherController/saveOrUpdateTeacher |

 

**3.2** **项目结构图**

 ![image-20250404193907999](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193907999.png)

**3.3** **数据库设计**     

 ![image-20250404193914645](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193914645.png)

 

 

表 1 管理员

| 字段名称      | 字段类型 | 字段长度 | 是否主键 | 是否可以为空 | 字段说明 |
| ------------- | -------- | -------- | -------- | ------------ | -------- |
| id            | int      |          | 是       | 否           | 管理员ID |
| name          | varchar  | 15       | 否       | 是           | 姓名     |
| gender        | char     | 1        | 否       | 是           | 性别     |
| password      | varchar  | 100      | 否       | 是           | 密码     |
| email         | varchar  | 50       | 否       | 是           | 邮箱     |
| telephone     | varchar  | 12       | 否       | 是           | 联系电话 |
| address       | varchar  | 100      | 否       | 是           | 地址     |
| portrait_path | varchar  | 200      | 否       | 是           | 头像     |

 

表 2 课程

| 字段名称        | 字段类型 | 字段长度 | 是否主键 | 是否可以为空 | 字段说明     |
| --------------- | -------- | -------- | -------- | ------------ | ------------ |
| id              | int      |          | 是       | 否           | 课程ID       |
| name            | varchar  | 15       | 否       | 否           | 课程名       |
| introduction    | varchar  | 200      | 否       | 是           | 课程简介     |
| teacher         | varchar  | 15       | 否       | 否           | 讲师         |
| email           | varchar  | 20       | 否       | 是           | 讲师邮箱     |
| telephone       | varchar  | 12       | 否       | 是           | 讲师联系方式 |
| department_name | varchar  | 15       | 否       | 是           | 讲师所属部门 |
| applinum        | int      |          | 否       | 否           | 可报名人数   |
| registnum       | int      |          | 否       | 否           | 已报名人数   |
| start_time      | date     |          | 否       | 是           | 开始时间     |
| end_time        | date     |          | 否       | 是           | 结束时间     |
| state           | enum     |          | 否       | 否           | 课程状态     |

 

表 3 员工

| 字段名称        | 字段类型 | 字段长度 | 是否主键 | 是否可以为空 | 字段说明   |
| --------------- | -------- | -------- | -------- | ------------ | ---------- |
| id              | int      | 11       | 是       | 否           | 员工工号   |
| department_name | varchar  | 15       | 否       | 是           | 所属部门名 |
| name            | varchar  | 15       | 否       | 否           | 姓名       |
| gender          | char     | 1        | 否       | 是           | 性别       |
| password        | varchar  | 100      | 否       | 是           | 密码       |
| email           | varchar  | 50       | 否       | 是           | 邮箱       |
| telephone       | varchar  | 12       | 否       | 是           | 联系电话   |
| introduction    | varchar  | 200      | 否       | 是           | 员工介绍   |
| address         | varchar  | 100      | 否       | 是           | 地址       |
| portrait_path   | varchar  | 200      | 否       | 是           | 头像       |

 

表 4 报名信息

| 字段名称      | 字段类型 | 字段长度 | 是否主键 | 是否可以为空 | 字段说明       |
| ------------- | -------- | -------- | -------- | ------------ | -------------- |
| id            | int      |          | 是       | 否           | 报名信息ID     |
| tno           | int      |          | 否       | 否           | 员工工号       |
| name          | varchar  | 15       | 否       | 是           | 姓名           |
| gender        | char     | 1        | 否       | 是           | 性别           |
| email         | varchar  | 50       | 否       | 是           | 邮箱           |
| telephone     | varchar  | 12       | 否       | 是           | 联系电话       |
| address       | varchar  | 100      | 否       | 是           | 地址           |
| portrait_path | varchar  | 200      | 否       | 是           | 头像           |
| clazz_name    | varchar  | 15       | 否       | 否           | 员工所报课程名 |

 

**4.** **项目过程**

第一天：项目需求分析和熟悉框架

第二、三天：功能模块开发

第四天：整合代码和调试、汇报

 

**5.** **项目完成情况**

| **功能模块**         | **描述**                                             | **完成情况**                                                 |
| -------------------- | ---------------------------------------------------- | ------------------------------------------------------------ |
| **登陆功能**         | 用户登录系统时根据选择的角色分配权限，进入相应的页面 | 已实现                                                       |
| **人员管理功能**     | 管理员可以管理所有人员的信息，对信息进行增删改查     | 已实现                                                       |
| **个人信息管理功能** | 用户可以对自己的个人信息进行修改                     | 已实现                                                       |
| **课程管理功能**     | 管理员可以对课程进行增删改查                         | 已实现对课程的增删改查，但没有实现课程状态的实时更改         |
| **报名管理功能**     | 管理员可以查看和修改员工的课程报名信息               | 已实现管理员对报名信息的查看与更改，但没有实现员工对课程的报名 |

 

**6.** **项目成果展示**


 课程管理：

![image-20250404193938201](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193938201.png)

管理员可以使用添加键对课程进行添加操作；

使用批量删除键对课程进行批量删除；

可以在搜索框输入课程名称进行对课程的查询；

可以在信息列表上查看课程的信息；

可以使用修改键对选中课程进行修改操作

 


 管理员管理：

![image-20250404193944654](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193944654.png)

管理员可以使用添加键对管理员进行添加操作；

使用批量删除键对管理员进行批量删除；

可以在搜索框输入管理员名称进行对管理员的查询；

可以在信息列表上查看管理员的信息；

可以使用修改键对选中的管理员进行修改信息操作

 

员工管理：

![image-20250404193949673](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20250404193949673.png)

管理员可以使用添加键对员工进行添加操作；

使用批量删除键对员工进行批量删除；

可以在搜索框输入员工名称进行对员工的查询；

可以在信息列表上查看员工的信息；

可以使用修改键对选中的员工进行修改信息操作

 

**7.** **遇到问题及解决办法**

1） 在编写代码时，会出现因为依赖项版本间不兼容而导致的问题，在查找了各个官方文档后，对依赖项的版本进行了更改

2） 在调试代码时出现了找不到表字段的情况，原因在于mybatis的映射文件的编写出了问题，经过修改文件中sql语句，可以解决这个问题

3） 有时在登陆进员工页面时，会出现“没有该权限”的页面提示，在刷新后却可以成功进入管理员页面，暂时尚未找到问题原因
