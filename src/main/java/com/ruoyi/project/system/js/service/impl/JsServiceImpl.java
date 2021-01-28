package com.ruoyi.project.system.js.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.js.mapper.JsMapper;
import com.ruoyi.project.system.js.domain.Js;
import com.ruoyi.project.system.js.service.IJsService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 计算器Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-01-04
 */
@Service
public class JsServiceImpl implements IJsService 
{
    @Autowired
    private JsMapper jsMapper;

    /**
     * 查询计算器
     * 
     * @param aaId 计算器ID
     * @return 计算器
     */
    @Override
    public Js selectJsById(Long aaId)
    {
        return jsMapper.selectJsById(aaId);
    }

    /**
     * 查询计算器列表
     * 
     * @param js 计算器
     * @return 计算器
     */
    @Override
    public List<Js> selectJsList(Js js)
    {
        return jsMapper.selectJsList(js);
    }

    /**
     * 新增计算器
     * 
     * @param js 计算器
     * @return 结果
     */
    @Override
    public int insertJs(Js js)
    {
        return jsMapper.insertJs(js);
    }

    /**
     * 修改计算器
     * 
     * @param js 计算器
     * @return 结果
     */
    @Override
    public int updateJs(Js js)
    {
        return jsMapper.updateJs(js);
    }

    /**
     * 删除计算器对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteJsByIds(String ids)
    {
        return jsMapper.deleteJsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除计算器信息
     * 
     * @param aaId 计算器ID
     * @return 结果
     */
    @Override
    public int deleteJsById(Long aaId)
    {
        return jsMapper.deleteJsById(aaId);
    }
}
