package com.ruoyi.project.system.student.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.student.mapper.StudentMapper;
import com.ruoyi.project.system.student.domain.Student;
import com.ruoyi.project.system.student.service.IStudentService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 学生基本信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-11-15
 */
@Service
public class StudentServiceImpl implements IStudentService 
{
    @Autowired
    private StudentMapper studentMapper;

    /**
     * 查询学生基本信息
     * 
     * @param studentId 学生基本信息ID
     * @return 学生基本信息
     */
    @Override
    public Student selectStudentById(Long studentId)
    {
        return studentMapper.selectStudentById(studentId);
    }

    /**
     * 查询学生基本信息列表
     * 
     * @param student 学生基本信息
     * @return 学生基本信息
     */
    @Override
    public List<Student> selectStudentList(Student student)
    {
        return studentMapper.selectStudentList(student);
    }

    /**
     * 新增学生基本信息
     * 
     * @param student 学生基本信息
     * @return 结果
     */
    @Override
    public int insertStudent(Student student)
    {
        return studentMapper.insertStudent(student);
    }

    /**
     * 修改学生基本信息
     * 
     * @param student 学生基本信息
     * @return 结果
     */
    @Override
    public int updateStudent(Student student)
    {
        return studentMapper.updateStudent(student);
    }

    /**
     * 删除学生基本信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteStudentByIds(String ids)
    {
        return studentMapper.deleteStudentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学生基本信息信息
     * 
     * @param studentId 学生基本信息ID
     * @return 结果
     */
    @Override
    public int deleteStudentById(Long studentId)
    {
        return studentMapper.deleteStudentById(studentId);
    }
}
