package com.ruoyi.project.system.js.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 计算器对象 sys_js
 * 
 * @author ruoyi
 * @date 2020-01-04
 */
public class Js extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long aaId;

    /** ming */
    @Excel(name = "ming")
    private String name;

    private String info2;

    public void setAaId(Long aaId) 
    {
        this.aaId = aaId;
    }

    public Long getAaId() 
    {
        return aaId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("aaId", getAaId())
            .append("name", getName())
            .toString();
    }
}
