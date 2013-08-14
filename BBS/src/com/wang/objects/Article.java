package com.wang.objects;

import java.sql.Timestamp;
import java.util.Date;

public class Article
{
    private int id;
    private int pid;
    private int rootid;
    private String title;
    private String cont;
    private Timestamp pdate; // sql date 是util子集
    private Boolean isleaf;

    public Article()
    {
	super();
    }

    public Article(int pid, int rootid, String title, String cont,
	    Timestamp pdate, Boolean isleaf)
    {
	super();
	this.pid = pid;
	this.rootid = rootid;
	this.title = title;
	this.cont = cont;
	this.pdate = pdate;
	this.isleaf = isleaf;
    }

    public int getId()
    {
	return id;
    }

    public void setId(int id)
    {
	this.id = id;
    }

    public int getPid()
    {
	return pid;
    }

    public void setPid(int pid)
    {
	this.pid = pid;
    }

    public int getRootid()
    {
	return rootid;
    }

    public void setRootid(int rootid)
    {
	this.rootid = rootid;
    }

    public String getTitle()
    {
	return title;
    }

    public void setTitle(String title)
    {
	this.title = title;
    }

    public String getCont()
    {
	return cont;
    }

    public void setCont(String cont)
    {
	this.cont = cont;
    }

    public Timestamp getPdate()
    {
	return pdate;
    }

    public void setPdate(Timestamp pdate)
    {
	this.pdate = pdate;
    }

    public Boolean getIsleaf()
    {
	return isleaf;
    }

    public void setIsleaf(Boolean isleaf)
    {
	this.isleaf = isleaf;
    }
}
