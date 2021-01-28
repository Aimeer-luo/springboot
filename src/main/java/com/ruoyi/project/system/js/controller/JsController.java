package com.ruoyi.project.system.js.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.system.js.domain.Js;
import com.ruoyi.project.system.js.service.IJsService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 计算器Controller
 * 
 * @author ruoyi
 * @date 2020-01-04
 */
@Controller
@RequestMapping("/system/js")
public class JsController extends BaseController
{
    private String prefix = "system/js";

    @Autowired
    private IJsService jsService;

    @RequiresPermissions("system:js:view")
    @GetMapping()
    public String js()
    {
        return prefix + "/js";
    }

    /**
     * 查询计算器列表
     */
    @RequiresPermissions("system:js:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Js js)
    {
        startPage();
        List<Js> list = jsService.selectJsList(js);
        return getDataTable(list);
    }

    /**
     * 导出计算器列表
     */
    @RequiresPermissions("system:js:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Js js)
    {
        List<Js> list = jsService.selectJsList(js);
        ExcelUtil<Js> util = new ExcelUtil<Js>(Js.class);
        return util.exportExcel(list, "js");
    }

    /**
     * 新增计算器
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存计算器
     */
    @RequiresPermissions("system:js:add")
    @Log(title = "计算器", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Js js)
    {
        return toAjax(jsService.insertJs(js));
    }

    /**
     * 修改计算器
     */
    @GetMapping("/edit/{aaId}")
    public String edit(@PathVariable("aaId") Long aaId, ModelMap mmap)
    {
        Js js = jsService.selectJsById(aaId);
        mmap.put("js", js);
        return prefix + "/edit";
    }

    /**
     * 修改保存计算器
     */
    @RequiresPermissions("system:js:edit")
    @Log(title = "计算器", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Js js)
    {
        return toAjax(jsService.updateJs(js));
    }

    /**
     * 删除计算器
     */
    @RequiresPermissions("system:js:remove")
    @Log(title = "计算器", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(jsService.deleteJsByIds(ids));
    }
}
