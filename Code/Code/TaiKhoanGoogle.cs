//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Code
{
    using System;
    using System.Collections.Generic;
    
    public partial class TaiKhoanGoogle
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TaiKhoanGoogle()
        {
            this.TaiKhoanFacebooks = new HashSet<TaiKhoanFacebook>();
        }
    
        public int IDTaiKhoanG { get; set; }
        public string TenDangNhap { get; set; }
        public string MatKhau { get; set; }
        public string Ho { get; set; }
        public string Ten { get; set; }
        public int NgaySinh { get; set; }
        public int ThangSinh { get; set; }
        public int NamSinh { get; set; }
        public int GioiTinh { get; set; }
        public int TrangThai { get; set; }
        public string IDThietBi { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TaiKhoanFacebook> TaiKhoanFacebooks { get; set; }
    }
}