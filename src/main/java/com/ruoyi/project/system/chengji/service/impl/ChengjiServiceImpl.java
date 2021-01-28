package com.ruoyi.project.system.chengji.service.impl;

import java.util.List;

import com.ruoyi.project.system.zt.domain.Zt;
import com.ruoyi.project.system.zt.mapper.ZtMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.chengji.mapper.ChengjiMapper;
import com.ruoyi.project.system.chengji.domain.Chengji;
import com.ruoyi.project.system.chengji.service.IChengjiService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 学生成绩信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-12-03
 */
@Service
public class ChengjiServiceImpl implements IChengjiService 
{
    @Autowired
    private ChengjiMapper chengjiMapper;

    @Autowired
    private ZtMapper ztMapper;

    /**
     * 查询学生成绩信息
     * 
     * @param chengjiId 学生成绩信息ID
     * @return 学生成绩信息
     */
    @Override
    public Chengji selectChengjiById(Long chengjiId)
    {
        return chengjiMapper.selectChengjiById(chengjiId);
    }

    /**
     * 查询学生成绩信息列表
     * 
     * @param chengji 学生成绩信息
     * @return 学生成绩信息
     */
    @Override
    public List<Chengji> selectChengjiList(Chengji chengji)
    {
        return chengjiMapper.selectChengjiList(chengji);
    }

    /**
     * 新增学生成绩信息
     * 
     * @param chengji 学生成绩信息
     * @return 结果
     */
    @Override
    public int insertChengji(Chengji chengji)
    {
        return chengjiMapper.insertChengji(chengji);
    }

    /**
     * 修改学生成绩信息
     * 
     * @param chengji 学生成绩信息
     * @return 结果
     */
    @Override
    public int updateChengji(Chengji chengji)
    {
        return chengjiMapper.updateChengji(chengji);
    }

    /**
     * 删除学生成绩信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteChengjiByIds(String ids)
    {
        return chengjiMapper.deleteChengjiByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学生成绩信息信息
     * 
     * @param chengjiId 学生成绩信息ID
     * @return 结果
     */
    @Override
    public int deleteChengjiById(Long chengjiId)
    {
        return chengjiMapper.deleteChengjiById(chengjiId);
    }

    /**
     * 统计信息
     *
     * @param zt 统计信息
     * @return 结果
     */
    @Override
    public int ztChengji(Zt zt) { return ztMapper.insertZt(zt); }
}
