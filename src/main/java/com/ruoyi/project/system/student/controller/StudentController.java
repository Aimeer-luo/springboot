package com.ruoyi.project.system.student.controller;

import java.io.IOException;
import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.framework.config.RuoYiConfig;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.system.student.domain.Student;
import com.ruoyi.project.system.student.service.IStudentService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 学生基本信息Controller
 * 
 * @author ruoyi
 * @date 2019-11-15
 */
@Controller
@RequestMapping("/system/student")
public class StudentController extends BaseController
{
    private String prefix = "system/student";

    @Autowired
    private IStudentService studentService;

    @RequiresPermissions("system:student:view")
    @GetMapping()
    public String student()
    {
        return prefix + "/student";
    }

    /**
     * 查询学生基本信息列表
     */
    @RequiresPermissions("system:student:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Student student)
    {
        startPage();
        List<Student> list = studentService.selectStudentList(student);
        return getDataTable(list);
    }

    /**
     * 导出学生基本信息列表
     */
    @RequiresPermissions("system:student:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Student student)
    {
        List<Student> list = studentService.selectStudentList(student);
        ExcelUtil<Student> util = new ExcelUtil<Student>(Student.class);
        return util.exportExcel(list, "student");
    }

    /**
     * 新增学生基本信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学生基本信息
     */
    @RequiresPermissions("system:student:add")
    @Log(title = "学生基本信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    /*public AjaxResult addSave(Student student)
    {
        return toAjax(studentService.insertStudent(student));
    }*/
    public AjaxResult addSave(@RequestParam("file") MultipartFile file, Student student) throws IOException
    {

        // 上传文件路径
        String studentCard = RuoYiConfig.getUploadPath();
        // 上传并返回新文件名称
        String studentName = FileUploadUtils.upload(studentCard, file);
        student.setStudentBirthday(DateUtils.getNowDate());
        student.setStudentCard(studentName);
        return toAjax(studentService.insertStudent(student));
    }

    /**
     * 修改学生基本信息
     */
    @GetMapping("/edit/{studentId}")
    public String edit(@PathVariable("studentId") Long studentId, ModelMap mmap)
    {
        Student student = studentService.selectStudentById(studentId);
        mmap.put("student", student);
        return prefix + "/edit";
    }

    /**
     * 修改保存学生基本信息
     */
    @RequiresPermissions("system:student:edit")
    @Log(title = "学生基本信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    /*public AjaxResult editSave(Student student)
    {
        return toAjax(studentService.updateStudent(student));
    }*/
    public AjaxResult editSave(@RequestParam("file") MultipartFile file, Student student) throws IOException
    {

        // 上传文件路径
        String studentCard = RuoYiConfig.getUploadPath();
        // 上传并返回新文件名称
        String studentName = FileUploadUtils.upload(studentCard, file);
        student.setStudentBirthday(DateUtils.getNowDate());
        student.setStudentCard(studentName);
        return toAjax(studentService.updateStudent(student));
    }

    /**
     * 删除学生基本信息
     */
    @RequiresPermissions("system:student:remove")
    @Log(title = "学生基本信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(studentService.deleteStudentByIds(ids));
    }

    /**测试*/
    @RequiresPermissions("system:student:list")
    @RequestMapping("git")
    public String git(){
        return "git";
    }
}
