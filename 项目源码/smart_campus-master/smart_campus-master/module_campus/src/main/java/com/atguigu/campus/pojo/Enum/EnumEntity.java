package com.atguigu.campus.pojo.Enum;

import lombok.Data;

/**
 * 枚举转换成的实体类
 *
 */
@Data
public class EnumEntity implements EnumCode {
    private EnumCode enumCode;
    private long code;
    private String msg;
}