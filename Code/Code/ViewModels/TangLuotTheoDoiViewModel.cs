using Code.Models;
using Code.Utils.Story;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Code.ViewModels
{
    public class TangLuotTheoDoiViewModel:ViewModelBase
    {
        private static TangLuotTheoDoiViewModel INSTANCE = null;

        public static TangLuotTheoDoiViewModel GetInstance()
        {
            if (INSTANCE == null)
            {
                INSTANCE = new TangLuotTheoDoiViewModel();
            }
            return INSTANCE;
        }
        public TangLuotTheoDoiViewModel() : base()
        {

        }

        protected override void ThucHienCongViecTrenThietBi(string idThietBi)
        {
            themDongChoBangMutex.WaitOne();
            var status = new DeviceStatus { Stt = devices.Count + 1, DeviceId = idThietBi, Status = DeviceStatus.TrangThai.DANG_CHAY };
            mainDispatcher.Invoke(() =>
            {
                devices.Add(status);
            });
            themDongChoBangMutex.ReleaseMutex();

            NodeHolder holder = new NodeHolder();
            var job = new TakeFacebookCode(idThietBi, holder);
            try
            {
                if (job.RunScript())
                {
                    status.Status = DeviceStatus.TrangThai.THANH_CONG;
                    Console.WriteLine("CODE = " + TakeFacebookCode.GetCode(holder.node));
                    TangThanhCong();
                }
                else
                {
                    status.Status = DeviceStatus.TrangThai.THAT_BAI;
                    TangThatBai();
                }
            }
            catch (Exception ex)
            {
                status.Status = DeviceStatus.TrangThai.THAT_BAI;
                TangThatBai();
            }
        }
    }
}
