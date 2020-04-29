package com.zc.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.zc.dao.*;
import com.zc.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zc.service.IStudentService;

@Service
public class StudentServiceImpl implements IStudentService {

    @Autowired
    private IStudentDao studentDao;

    @Autowired
    private IThesisTitleDao thesisTitleDao;

    @Autowired
    private ITopicDao topicDao;

    @Autowired
    private ITeacherTaskBookOpeningDao teacherTaskBookOpeningDao;

    @Autowired
    private IStudentTaskBookOpeningDao studentTaskBookOpeningDao;

    @Autowired
    private ITeacherProgressDao teacherProgressDao;

    @Autowired
    private IAnnouncementDao announcementDao;

    @Autowired
    private IThesisInformationDao thesisInformationDao;

    @Autowired
    private IDoubtDao doubtDao;

    @Autowired
    private InterimReportDao interimReportDao;

    @Autowired
    SystemCodeDao systemCodeDao;

    @Autowired
    TranslationDao translationDao;

    @Autowired
    EnclosureDao enclosureDao;

    public int addStudent(Student student) {
        int addNum = studentDao.addStudent(student);
        return addNum;
    }


    public List<Student> showAllStudent() {
        // TODO Auto-generated method stub
        List<Student> students = studentDao.showAllStudent();
        return students;
    }


    public Student getStudentNameById(int id) {
        // TODO Auto-generated method stub
        Student student = studentDao.selectStudent(id);

        return student;
    }


    public int updateStudent(Student student) {
        // TODO Auto-generated method stub
        int num = studentDao.updateStudent(student);
        return num;
    }


    public int deleteStudent(int id) {
        // TODO Auto-generated method stub
        int num = studentDao.deleteStudent(id);
        return num;

    }


    public List<Student> showStudentOne1(String studentNo) {
        // TODO Auto-generated method stub
        List<Student> students = studentDao.showStudentOne1(studentNo);
        return students;
    }


    public List<Student> showStudentOne2(String studentName) {
        // TODO Auto-generated method stub
        List<Student> students = studentDao.showStudentOne2(studentName);
        return students;
    }


    public List<Student> showStudentOne3(String studentNo, String studentName) {
        // TODO Auto-generated method stub
        List<Student> students = studentDao.showStudentOne3(studentNo, studentName);
        return students;
    }


    public Student getStudentByNO(String studentNo) {
        // TODO Auto-generated method stub
        Student student = studentDao.getInfoByNo(studentNo);
        return student;
    }


    public List<ThesisTitle> availableTopic() {
        // TODO Auto-generated method stub

        // 获得所有的课题List 包括 未审核、审核通过和审核不通过的
        List<ThesisTitle> thesisList = thesisTitleDao.showAllThesisTitleAd();
        //System.out.println("原始的List是："+thesisList);
        //移除未审核和审核不通过的

        for (int i = 0; i < thesisList.size(); i++) {
            if (thesisList.get(i).getStatus() != 2) {
                thesisList.remove(i);
            }
        }
        //System.out.println("修改后的List是："+thesisList);
        //移除thesisTitle中已被选的
        List<Topic> topicList = topicDao.showAllTopic();
        List<ThesisTitle> showList = new ArrayList<ThesisTitle>();
        for (int i = 0; i < thesisList.size(); i++) {
            for (int j = 0; j < topicList.size(); j++) {
                if (thesisList.get(i).getId() == topicList.get(j).getThesisId()) {
                    break;
                } else if (j == topicList.size() - 1) {
                    showList.add(thesisList.get(i));
                } else {

                }
            }

        }
        return showList;
    }


    public Topic chosenThesisTitle(int studentId) {
        // TODO Auto-generated method stub
        Topic topic = topicDao.topicByStudentId(studentId);

        return topic;
    }


    public int addTopicToDb(Topic topic) {
        // TODO Auto-generated method stub
        int num = topicDao.addTopic(topic);
        return num;
    }


    public int deleteTopic(int studentId) {
        // TODO Auto-generated method stub
        int num = topicDao.deleteTopic(studentId);
        return num;
    }


    public TeacherTaskBookOpening getFilePathByThesisId(int thesisId) {
        // TODO Auto-generated method stub
        TeacherTaskBookOpening teacherTaskBookOpening = teacherTaskBookOpeningDao.showInfo(thesisId);
        return teacherTaskBookOpening;
    }


    public int uploadTaskBook(int studentId, String filePath) {
        // TODO Auto-generated method stub
        StudentTaskBookOpening dbInfo = studentTaskBookOpeningDao.showInfoByStudentId(studentId);
        if (dbInfo == null || "".equals(dbInfo)) {
            studentTaskBookOpeningDao.addInfoByStudentId(studentId);
        }
        int num = studentTaskBookOpeningDao.uploadTaskBook(studentId, filePath);
        return num;
    }


    public int uploadOpening(int studentId, String filePath) {
        // TODO Auto-generated method stub
        StudentTaskBookOpening dbInfo = studentTaskBookOpeningDao.showInfoByStudentId(studentId);
        if (dbInfo == null || "".equals(dbInfo)) {
            studentTaskBookOpeningDao.addInfoByStudentId(studentId);
        }
        int num = studentTaskBookOpeningDao.uploadOpening(studentId, filePath);
        return num;
    }


    public StudentTaskBookOpening getSTBOInfoById(int studentId) {
        // TODO Auto-generated method stub
        StudentTaskBookOpening STBO = studentTaskBookOpeningDao.showInfoByStudentId(studentId);

        return STBO;
    }


    public Map<String, String> getTaskBookOpeningToMap(int studentId) {
        // TODO Auto-generated method stub
        Map<String, String> fileList = new HashMap<String, String>();
        StudentTaskBookOpening STBO = studentTaskBookOpeningDao.showInfoByStudentId(studentId);
        if (STBO == null || "".equals(STBO)) {
            return fileList;
        } else {
            String taskBookPath = STBO.getStudentTaskBook();
            if (taskBookPath == null || "".equals(taskBookPath)) {

            } else {
                String[] str1 = taskBookPath.split("\\\\");
                String fileName1 = str1[str1.length - 1].toString();
                fileList.put(fileName1, taskBookPath);
            }

            String openingPath = STBO.getStudentOpeningResport();
            if (openingPath == null || "".equals(openingPath)) {

            } else {
                String[] str2 = openingPath.split("\\\\");
                String fileName2 = str2[str2.length - 1].toString();
                fileList.put(fileName2, openingPath);
            }

            return fileList;
        }

    }


    public int resetTaskBook(int studentId) {
        // TODO Auto-generated method stub
        int num = studentTaskBookOpeningDao.resetTaskBook(studentId);

        return num;
    }


    public int resetOpening(int studentId) {
        // TODO Auto-generated method stub
        int num = studentTaskBookOpeningDao.resetOpening(studentId);
        return num;
    }


    public StudentTaskBookOpening getInfoByTaskBookPath(String taskBookPath) {
        // TODO Auto-generated method stub
        StudentTaskBookOpening STBO = studentTaskBookOpeningDao.getInfoByTaskBookPath(taskBookPath);

        return STBO;
    }


    public StudentTaskBookOpening getInfoByOpeningPath(String openingPath) {
        // TODO Auto-generated method stub
        StudentTaskBookOpening STBO = studentTaskBookOpeningDao.getInfoByOpeningPath(openingPath);
        return STBO;
    }


    public ThesisTitle getThesisInfoByid(int thesisId) {
        // TODO Auto-generated method stub
        ThesisTitle thesis = thesisTitleDao.getThesisById(thesisId);

        return thesis;
    }


    public List<TeacherProgress> getTeacherProgressByStudentId(int studentId) {
        // TODO Auto-generated method stub
        List<TeacherProgress> t = teacherProgressDao.getInfoByStudentId(studentId);

        return t;
    }


    public List<Announcement> showAllAnnouncement() {
        // TODO Auto-generated method stub
        List<Announcement> list = announcementDao.showAllAnnouncement();

        return list;
    }


    public int uploadThesisInformation(int studentId, String filePath) {
        // TODO Auto-generated method stub
        ThesisInformation thesis = new ThesisInformation();
        thesis.setStudentId(studentId);
        thesis.setThesisText(filePath);

        int num = thesisInformationDao.addThesisInformation(thesis);

        return num;
    }


    public ThesisInformation getInfoByStudentId(int studentId) {
        // TODO Auto-generated method stub

        ThesisInformation thesis = thesisInformationDao.getInfoByStudentId(studentId);
        return thesis;
    }


    public ThesisInformation getInfoByFilePath(String filePath) {
        // TODO Auto-generated method stub
        ThesisInformation thesis = thesisInformationDao.getInfoByFilePath(filePath);

        return thesis;
    }


    public int deleteThesisInformation(int studentId) {
        // TODO Auto-generated method stub

        int num = thesisInformationDao.deleteThesisInformation(studentId);
        return num;
    }


    public ThesisInformation getThesisInforInfoByStudentId(int studentId) {
        // TODO Auto-generated method stub
        ThesisInformation thesisInfo = thesisInformationDao.getInfoByStudentId(studentId);

        return thesisInfo;
    }


    public int addDoubt(Doubt doubt) {
        // TODO Auto-generated method stub
        int num = doubtDao.addDoubt(doubt);

        return num;
    }


    public List<Doubt> getAllDoubtByStudent(int studentId) {
        // TODO Auto-generated method stub
        List<Doubt> doubtList = doubtDao.getAllDoubt(studentId);
        return doubtList;
    }


    public String getThesisDesc(int thesisId) {
        // TODO Auto-generated method stub

        ThesisTitle thesis = thesisTitleDao.getThesisById(thesisId);
        String desc = thesis.getDescription();
        return desc;
    }

    public void uploadInterimReport(int studentId, String filePath) {
        // TODO Auto-generated method stub
        InterimReport interimReport = interimReportDao.findInterimReport(studentId);
        InterimReport thesis = new InterimReport();
        thesis.setStudentId(studentId);
        thesis.setThesisText(filePath);
        if (null == interimReport) {

            interimReportDao.addInterimReport(thesis);
        } else {
            interimReportDao.updateInterimReport(thesis);
        }


    }

    public InterimReport findInterimReport(int studentId) {
        // TODO Auto-generated method stub
        InterimReport t = interimReportDao.findInterimReport(studentId);

        return t;
    }

    public void uploadSystemCode(int studentId, String filePath) {
        SystemCode systemCode = systemCodeDao.findSystemCode(studentId);
        SystemCode thesis = new SystemCode();
        thesis.setStudentId(studentId);
        thesis.setThesisText(filePath);
        if (null == systemCode) {

            systemCodeDao.addSystemCode(thesis);
        } else {
            systemCodeDao.updateSystemCode(thesis);
        }
    }

    public SystemCode findSystemCode(int studentId) {
        SystemCode t = systemCodeDao.findSystemCode(studentId);

        return t;
    }

    public void uploadTranslation(int studentId, String filePath) {
        Translation translation = translationDao.findTranslation(studentId);
        SystemCode thesis = new SystemCode();
        thesis.setStudentId(studentId);
        thesis.setThesisText(filePath);
        if (null == translation) {

            systemCodeDao.addSystemCode(thesis);
        } else {
            systemCodeDao.updateSystemCode(thesis);
        }
    }

    public Translation findTranslation(int studentId) {
        Translation t = translationDao.findTranslation(studentId);

        return t;
    }

    public void uploadEnclosure(int studentId, String filePath) {
        Enclosure enclosure = enclosureDao.findEnclosure(studentId);
        Enclosure thesis = new Enclosure();
        thesis.setStudentId(studentId);
        thesis.setThesisText(filePath);
        if (null == enclosure) {

            enclosureDao.addEnclosure(thesis);
        } else {
            enclosureDao.updateEnclosure(thesis);
        }
    }

    public Enclosure findEnclosure(int studentId) {
        Enclosure t = enclosureDao.findEnclosure(studentId);

        return t;
    }

    public void deleteEnclosure(int studentId) {
        enclosureDao.deleteEnclosure(studentId);
    }

    public void deleteInterimReport(int studentId) {
        interimReportDao.deleteInterimReport(studentId);
    }

    public void deleteSystemCode(int studentId) {
        systemCodeDao.deleteSystemCode(studentId);
    }

    public void deleteTranslation(int studentId) {
    translationDao.deleteTranslation(studentId);
    }

    public InterimReport findInterimReportPath(String filePath) {
       return interimReportDao.findInterimReportPath(filePath);
    }

    public SystemCode findSystemCodePath(String path) {
      return  systemCodeDao.findSystemCodePath(path);
    }

    public Translation findTranslationPath(String path) {
      return   translationDao.findTranslationPath(path);

    }

    public Enclosure findEnclosurePath(String path) {
        return enclosureDao.findEnclosurePath(path);
    }

}
