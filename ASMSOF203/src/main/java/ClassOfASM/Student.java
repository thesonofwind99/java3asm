/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ClassOfASM;

/**
 *
 * @author Administrator
 */
public class Student {
    private String maSV;
    private String hoTen;
    private String email;
    private String number;
    private boolean gioiTinh;
    private String diaChi;
    private String anh;

    public Student(String maSV, String hoTen, String email, String number, boolean gioiTinh, String diaChi, String anh) {
        this.maSV = maSV;
        this.hoTen = hoTen;
        this.email = email;
        this.number = number;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.anh = anh;
    }

    public Student() {
    }

    public String getMaSV() {
        return maSV;
    }

    public void setMaSV(String maSV) {
        this.maSV = maSV;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public boolean isGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(boolean gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }
    
}
