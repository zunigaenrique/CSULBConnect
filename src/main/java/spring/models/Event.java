package spring.models;

public class Event {
  private Long eid;
  private String ename;
  private String elocation;
  private String edate;
  private String edescription;
  private java.sql.Timestamp estored;
  private String estatus;
  private Long uid;

  public Long getEid() {
    return eid;
  }

  public void setEid(Long eid) {
    this.eid = eid;
  }

  public String getEname() {
    return ename;
  }

  public void setEname(String ename) {
    this.ename = ename;
  }

  public String getElocation() {
    return elocation;
  }

  public void setElocation(String elocation) {
    this.elocation = elocation;
  }

  public String getEdate() {
    return edate;
  }

  public void setEdate(String edate) {
    this.edate = edate;
  }

  public String getEdescription() {
    return edescription;
  }

  public void setEdescription(String edescription) {
    this.edescription = edescription;
  }

  public java.sql.Timestamp getEstored() {
    return estored;
  }

  public void setEstored(java.sql.Timestamp estored) {
    this.estored = estored;
  }

  public String getEstatus() {
    return estatus;
  }

  public void setEstatus(String estatus) {
    this.estatus = estatus;
  }

  public Long getUid() {
    return uid;
  }

  public void setUid(Long uid) {
    this.uid = uid;
  }
  
  public String toString() {
    return "Event{" +
    "Name='" + ename + '\'' +
    ", Location='" + elocation + '\'' +
    '}';
  }
}

