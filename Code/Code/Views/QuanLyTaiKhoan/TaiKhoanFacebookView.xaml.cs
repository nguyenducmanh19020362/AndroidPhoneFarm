﻿using Code.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Code.Views.QuanLyTaiKhoan
{
    /// <summary>
    /// Interaction logic for TaiKhoanFacebookView.xaml
    /// </summary>
    public partial class TaiKhoanFacebookView : UserControl
    {
        public ObservableCollection<ThongTinTaiKhoan> taiKhoans;
        private BackgroundWorker bk = new BackgroundWorker();
        DbSet<TaiKhoanFacebook> objectList = null;
        public TaiKhoanFacebookView()
        {
            taiKhoans = new ObservableCollection<ThongTinTaiKhoan>();
            InitializeComponent();
            dgTaiKhoan.ItemsSource = taiKhoans;
            bk.DoWork += (obj, e) =>
            {
                objectList = DataProvider.Ins.db.TaiKhoanFacebooks;
            };
            bk.RunWorkerCompleted += (obj, e) =>
            {
                Load();
            };
            bk.RunWorkerAsync();
        }

        private void btnRefresh_Click(object sender, RoutedEventArgs e)
        {
            bk.RunWorkerAsync();
        }

        private void btnDeleteError_Click(object sender, RoutedEventArgs e)
        {
            var objectList = DataProvider.Ins.db.TaiKhoanFacebooks;
            foreach (var item in objectList)
            {
                if (item.TrangThai != 1)
                {
                    DataProvider.Ins.db.TaiKhoanFacebooks.Remove(item);
                }
            }
            DataProvider.Ins.db.SaveChanges();
            MessageBox.Show("Xóa thành công");
            bk.RunWorkerAsync();
        }
        private void Load()
        {
            taiKhoans.Clear();
            int stt = 1;
            foreach (var item in objectList)
            {
                ThongTinTaiKhoan taiKhoan = new ThongTinTaiKhoan();
                taiKhoan.STT = stt++;
                taiKhoan.TenDangNhap = item.TenDangNhap;
                taiKhoan.MatKhau = item.MatKhau;
                taiKhoan.HoTen = string.Format("{0} {1}", item.Ho, item.Ten);
                taiKhoan.GioiTinh = item.GioiTinh == 0 ? "Nữ" : item.GioiTinh == 1 ? "Nam" : "Không";
                taiKhoan.NgaySinh = string.Format("{0}/{1}/{2}", item.NgaySinh, item.ThangSinh, item.NamSinh);
                taiKhoan.TrangThai = item.TrangThai == 1 ? "Truy cập" : "Lỗi";
                taiKhoan.MaThietBi = item.IDThietBi;
                taiKhoans.Add(taiKhoan);
            }
            dgTaiKhoan.ItemsSource = taiKhoans;
        }
    }
}
