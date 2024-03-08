package servlets;

public class getters {
    private int regno;
    private String name;
    private String dep;
    private String sec;
    private String district;
    private String mobile;

    public getters(int regno, String name, String dep, String sec, String district, String mobile) {
        this.regno = regno;
        this.name = name;
        this.dep = dep;
        this.sec = sec;
        this.district = district;
        this.mobile = mobile;
    }

    // Setter and Getter for regno
    public int getRegno() {
        return regno;
    }

    public void setRegno(int regno) {
        this.regno = regno;
    }

    // Setter and Getter for name
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    // Setter and Getter for dep
    public String getDep() {
        return dep;
    }

    public void setDep(String dep) {
        this.dep = dep;
    }

    // Setter and Getter for sec
    public String getSec() {
        return sec;
    }

    public void setSec(String sec) {
        this.sec = sec;
    }

    // Setter and Getter for district
    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    // Setter and Getter for mobile
    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
}
