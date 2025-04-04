package com.atguigu.campus.controller;

import com.atguigu.campus.pojo.Course;
import com.atguigu.campus.service.CourseService;
import com.atguigu.campus.utils.Result;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.github.xiaoymin.knife4j.core.util.StrUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 课程控制层
 * 处理与课程相关的HTTP请求
 * 包括查询、删除、保存或更新课程信息
 * （报废）
 */
@Api(tags = "课程控制层")
@RestController
@RequestMapping("/sms/courseController")
public class CourseController {

    @Resource
    private CourseService courseService;

    @ApiOperation("分页带条件查询课程")
    @GetMapping("/getcourseByOpr/{pn}/{pageSize}")
    public Result<Object> getcourseByOpr(@ApiParam("当前页码") @PathVariable("pn") Integer pn,
                                          @ApiParam("每页显示的记录数") @PathVariable("pageSize") Integer pageSize,
                                          @ApiParam("请求参数中带查询的模糊条件") String coursename,String teacher){

        Page<Course> page = courseService.page(new Page<>(pn, pageSize),
                new LambdaQueryWrapper<Course>().like(StrUtil.isNotBlank(coursename), Course::getCoursename, coursename)
                        .like(StrUtil.isNotBlank(teacher), Course::getTeacher, teacher)
                        .orderByDesc(Course::getId));

        return Result.ok(page);
    }

    @ApiOperation("单独或批量删除课程信息")
    @DeleteMapping("/delcourseById")
    public Result<Object> delcourseById(@ApiParam("请求体中封装的待删除的课程id集合") @RequestBody List<Integer> ids){
        if(ids.size() == 1){
            courseService.removeById(ids.get(0));
        }else {
            courseService.removeBatchByIds(ids);
        }
        return Result.ok();
    }

    @ApiOperation("存储或者更新课程信息")
    @PostMapping("/addOrUpdatecourse")
    public Result<Object> addOrUpdatecourse(@ApiParam("封装到实体类的请求体中json数据") @RequestBody Course course){
        Integer id = course.getId();
        if(id == null){
            //将获取到的密码进行加密 存储到数据库中
            //course.setPassword(MD5.encrypt(course.getPassword()));
            //添加课程
            courseService.save(course);
        }else {
            courseService.update(course,new LambdaQueryWrapper<Course>().eq(Course::getId,id));
        }
        return Result.ok();
    }


}
