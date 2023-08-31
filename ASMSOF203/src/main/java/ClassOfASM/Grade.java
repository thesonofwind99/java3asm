/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ClassOfASM;

import java.text.DecimalFormat;

/**
 *
 * @author Administrator
 */
public class Grade {
    private String maSV;
    private String hoTen;
    private double tiengAnh;
    private double tinHoc;
    private double GDTC;

    public Grade(String maSV, String hoTen, double tiengAnh, double tinHoc, double GDTC) {
        this.maSV = maSV;
        this.hoTen = hoTen;
        this.tiengAnh = tiengAnh;
        this.tinHoc = tinHoc;
        this.GDTC = GDTC;
    }

    public Grade() {
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

    public double getTiengAnh() {
        return tiengAnh;
    }

    public void setTiengAnh(double tiengAnh) {
        this.tiengAnh = tiengAnh;
    }

    public double getTinHoc() {
        return tinHoc;
    }

    public void setTinHoc(double tinHoc) {
        this.tinHoc = tinHoc;
    }

    public double getGDTC() {
        return GDTC;
    }

    public void setGDTC(double GDTC) {
        this.GDTC = GDTC;
    }

    
    public String getDiemTB(){
        DecimalFormat df = new DecimalFormat("#.##");
        Double totalMark = (this.getTiengAnh()+this.getTinHoc()+this.getGDTC())/3;
        return df.format(totalMark);
    }
}
