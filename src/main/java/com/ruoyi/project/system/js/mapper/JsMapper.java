package com.ruoyi.project.system.js.mapper;

import com.ruoyi.project.system.js.domain.Js;
import java.util.List;

/**
 * 计算器Mapper接口
 * 
 * @author ruoyi
 * @date 2020-01-04
 */
public interface JsMapper 
{
    /**
     * 查询计算器
     * 
     * @param aaId 计算器ID
     * @return 计算器
     */
    public Js selectJsById(Long aaId);

    /**
     * 查询计算器列表
     * 
     * @param js 计算器
     * @return 计算器集合
     */
    public List<Js> selectJsList(Js js);

    /**
     * 新增计算器
     * 
     * @param js 计算器
     * @return 结果
     */
    public int insertJs(Js js);

    /**
     * 修改计算器
     * 
     * @param js 计算器
     * @return 结果
     */
    public int updateJs(Js js);

    /**
     * 删除计算器
     * 
     * @param aaId 计算器ID
     * @return 结果
     */
    public int deleteJsById(Long aaId);

    /**
     * 批量删除计算器
     * 
     * @param aaIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteJsByIds(String[] aaIds);
}
