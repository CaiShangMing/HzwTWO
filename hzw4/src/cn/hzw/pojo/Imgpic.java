package cn.hzw.pojo;

public class Imgpic {
    private Integer id;

    private Integer contextid;

    private String piclocalpath;

    private String picuploadpath;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getContextid() {
        return contextid;
    }

    public void setContextid(Integer contextid) {
        this.contextid = contextid;
    }

    public String getPiclocalpath() {
        return piclocalpath;
    }

    public void setPiclocalpath(String piclocalpath) {
        this.piclocalpath = piclocalpath == null ? null : piclocalpath.trim();
    }

    public String getPicuploadpath() {
        return picuploadpath;
    }

    public void setPicuploadpath(String picuploadpath) {
        this.picuploadpath = picuploadpath == null ? null : picuploadpath.trim();
    }
}