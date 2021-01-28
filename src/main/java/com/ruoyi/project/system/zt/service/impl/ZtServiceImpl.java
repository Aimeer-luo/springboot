package com.ruoyi.project.system.zt.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.zt.mapper.ZtMapper;
import com.ruoyi.project.system.zt.domain.Zt;
import com.ruoyi.project.system.zt.service.IZtService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 成绩统计及正态分布信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-01-03
 */
@Service
public class ZtServiceImpl implements IZtService 
{
    @Autowired
    private ZtMapper ztMapper;

    /**
     * 查询成绩统计及正态分布信息
     * 
     * @param ksId 成绩统计及正态分布信息ID
     * @return 成绩统计及正态分布信息
     */
    @Override
    public Zt selectZtById(Long ksId)
    {
        return ztMapper.selectZtById(ksId);
    }

    /**
     * 查询成绩统计及正态分布信息列表
     * 
     * @param zt 成绩统计及正态分布信息
     * @return 成绩统计及正态分布信息
     */
    @Override
    public List<Zt> selectZtList(Zt zt)
    {
        return ztMapper.selectZtList(zt);
    }

    /**
     * 新增成绩统计及正态分布信息
     * 
     * @param zt 成绩统计及正态分布信息
     * @return 结果
     */
    @Override
    public int insertZt(Zt zt)
    {
        return ztMapper.insertZt(zt);
    }

    /**
     * 修改成绩统计及正态分布信息
     * 
     * @param zt 成绩统计及正态分布信息
     * @return 结果
     */
    @Override
    public int updateZt(Zt zt)
    {
        return ztMapper.updateZt(zt);
    }

    /**
     * 删除成绩统计及正态分布信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZtByIds(String ids)
    {
        return ztMapper.deleteZtByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除成绩统计及正态分布信息信息
     * 
     * @param ksId 成绩统计及正态分布信息ID
     * @return 结果
     */
    @Override
    public int deleteZtById(Long ksId)
    {
        return ztMapper.deleteZtById(ksId);
    }
}
