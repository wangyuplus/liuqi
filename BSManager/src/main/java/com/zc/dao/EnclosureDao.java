package com.zc.dao;

import com.zc.entity.Enclosure;
import com.zc.entity.InterimReport;

/**
 * @Author: wangyu
 * @Date: 2020/4/28 17:52
 */
public interface EnclosureDao {
    void updateEnclosure(Enclosure enclosure);

    void addEnclosure(Enclosure enclosure);

    void  deleteEnclosure(int studentId);

    Enclosure findEnclosure(int studentId);

    Enclosure findEnclosurePath(String path);
}
