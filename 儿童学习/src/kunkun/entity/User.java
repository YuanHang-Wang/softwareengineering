package kunkun.entity;

public class User {
    public User( String username, String password,String sex) {
        this.username = username;
        this.password = password;
        this.sex = sex;
    }

        private String username;
        private String password;
        private String sex;

        public String getUsername() {
            return username;
        }

        public void setUsername(String username) {
            this.username = username;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }

        public String getSex() {
            return sex;
        }

        public void setSex(String sex) {
            this.sex = sex;
        }
}
