package com.atguigu.campus.mapper;

import com.atguigu.campus.pojo.Clazz;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
* @description 针对表【tb_clazz】的数据库操作Mapper
*/
public interface ClazzMapper extends BaseMapper<Clazz> {

    List<Clazz> selectClazzByGradeName(@Param("gradeName") String gradeName);

}




