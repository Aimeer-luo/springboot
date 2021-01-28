package com.ruoyi.project.system.zt.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 成绩统计及正态分布信息对象 sys_zt
 * 
 * @author ruoyi
 * @date 2020-01-03
 */
public class Zt extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long ksId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String ksUsername;

    /** 全期评分 */
    @Excel(name = "全期评分")
    private String xaxis;

    /** 平均分 */
    @Excel(name = "平均分")
    private String mean;

    /** 最低分数 */
    @Excel(name = "最低分数")
    private String lower;

    /** 最高分数 */
    @Excel(name = "最高分数")
    private String upper;

    /** 频率 */
    @Excel(name = "频率")
    private String yaxis;

    /** 标准偏差 */
    @Excel(name = "标准偏差")
    private String stdev;

    public void setKsId(Long ksId) 
    {
        this.ksId = ksId;
    }

    public Long getKsId() 
    {
        return ksId;
    }
    public void setKsUsername(String ksUsername) 
    {
        this.ksUsername = ksUsername;
    }

    public String getKsUsername() 
    {
        return ksUsername;
    }
    public void setXaxis(String xaxis) 
    {
        this.xaxis = xaxis;
    }

    public String getXaxis() 
    {
        return xaxis;
    }
    public void setMean(String mean) 
    {
        this.mean = mean;
    }

    public String getMean() 
    {
        return mean;
    }
    public void setLower(String lower) 
    {
        this.lower = lower;
    }

    public String getLower() 
    {
        return lower;
    }
    public void setUpper(String upper) 
    {
        this.upper = upper;
    }

    public String getUpper() 
    {
        return upper;
    }
    public void setYaxis(String yaxis) 
    {
        this.yaxis = yaxis;
    }

    public String getYaxis() 
    {
        return yaxis;
    }
    public void setStdev(String stdev) 
    {
        this.stdev = stdev;
    }

    public String getStdev() 
    {
        return stdev;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("ksId", getKsId())
            .append("ksUsername", getKsUsername())
            .append("xaxis", getXaxis())
            .append("mean", getMean())
            .append("lower", getLower())
            .append("upper", getUpper())
            .append("yaxis", getYaxis())
            .append("stdev", getStdev())
            .toString();
    }
}
