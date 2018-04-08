package spring.models;

/**
 * Created by lin on 4/6/2018.
 */
public class Signup {
    private String sEmail;
    private String sFirstName;
    private String sLastName;
    private String sPassword;
    private int sCode;

    public String getsEmail() {
        return sEmail;
    }

    public void setsEmail(String sEmail) {
        this.sEmail = sEmail;
    }

    public String getsFirstName() {
        return sFirstName;
    }

    public void setsFirstName(String sFirstName) {
        this.sFirstName = sFirstName;
    }

    public String getsLastName() {
        return sLastName;
    }

    public void setsLastName(String sLastName) {
        this.sLastName = sLastName;
    }

    public String getsPassword() {
        return sPassword;
    }

    public void setsPassword(String sPassword) {
        this.sPassword = sPassword;
    }

    public int getsCode() {
        return sCode;
    }

    public void setsCode(int sCode) {
        this.sCode = sCode;
    }

    public String toString() {
        return "Signup{" +
                "sEmail='" + sEmail + '\'' +
                ", sFirstName='" + sFirstName + '\'' +
                ", sLastName='" + sLastName + '\'' +
                ", sPassword='" + sPassword + '\'' +
                ", sCode=" + sCode +
                '}';
    }
}
