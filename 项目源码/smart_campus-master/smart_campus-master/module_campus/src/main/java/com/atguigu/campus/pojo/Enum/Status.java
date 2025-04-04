package com.atguigu.campus.pojo.Enum;

/*public enum Status implements EnumCode{
    NOT_START(001,"未开始"),
    IN_PROGRESS(002,"进行中"),
    FINISHED(003,"已完成");

    private final long code;
    private final String msg;
    Status(long code, String msg){
        this.code = code;
        this.msg = msg;
    }
    @Override
    public long getCode() {
        return code;
    }

    @Override
    public String getMsg() {
        return msg;
    }
}*/
public enum Status {
    未开始,
    进行中,
    已结束
}
