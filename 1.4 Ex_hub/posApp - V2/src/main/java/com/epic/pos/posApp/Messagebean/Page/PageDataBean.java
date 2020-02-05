package com.epic.pos.posApp.Messagebean.Page;

public class PageDataBean {
    private String PageCode;
    private String Description;
    private String SectionCode;
    private String SectionName;
    private String Url;

    public String getPageCode() {
        return PageCode;
    }

    public void setPageCode(String pageCode) {
        PageCode = pageCode;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getSectionCode() {
        return SectionCode;
    }

    public void setSectionCode(String sectionCode) {
        SectionCode = sectionCode;
    }

    public String getSectionName() {
        return SectionName;
    }

    public void setSectionName(String sectionName) {
        SectionName = sectionName;
    }

    public String getUrl() {
        return Url;
    }

    public void setUrl(String url) {
        Url = url;
    }
}
