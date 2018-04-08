package spring.models;

public class Users {
    private Long uid;
    private String ufirstname;
    private String uemail;
    private String upassword;
    private java.sql.Timestamp ulastlogin;
    private java.sql.Timestamp ustored;
    private String ustatus;
    private String ulastname;

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public String getUfirstname() {
        return ufirstname;
    }

    public void setUfirstname(String ufirstname) {
        this.ufirstname = ufirstname;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }

    public java.sql.Timestamp getUlastlogin() {
        return ulastlogin;
    }

    public void setUlastlogin(java.sql.Timestamp ulastlogin) {
        this.ulastlogin = ulastlogin;
    }

    public java.sql.Timestamp getUstored() {
        return ustored;
    }

    public void setUstored(java.sql.Timestamp ustored) {
        this.ustored = ustored;
    }

    public String getUstatus() {
        return ustatus;
    }

    public void setUstatus(String ustatus) {
        this.ustatus = ustatus;
    }

    public String getUlastname() {
        return ulastname;
    }

    public void setUlastname(String ulastname) {
        this.ulastname = ulastname;
    }

    public String toString() {
        return "Users{" +
                "uid=" + uid +
                ", ufirstname='" + ufirstname + '\'' +
                ", uemail='" + uemail + '\'' +
                ", upassword='" + upassword + '\'' +
                ", ulastlogin=" + ulastlogin +
                ", ustored=" + ustored +
                ", ustatus='" + ustatus + '\'' +
                ", ulastname='" + ulastname + '\'' +
                '}';
    }
}
