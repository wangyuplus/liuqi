package com.zc.dao;

import com.zc.entity.InterimReport;
import com.zc.entity.SystemCode;

/**
 * @Author: wangyu
 * @Date: 2020/4/28 17:25
 */
public interface SystemCodeDao {

    void updateSystemCode(SystemCode systemCode);

    void addSystemCode(SystemCode systemCode);

    void  deleteSystemCode(int studentId);

    SystemCode findSystemCode(int studentId);

    SystemCode findSystemCodePath(String path);
}
