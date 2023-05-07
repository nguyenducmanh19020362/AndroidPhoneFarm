using AngleSharp.Dom;
using Code.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Documents;
using System.Xml;
using System.Xml.Linq;

namespace Code.Utils.Story
{
    public delegate void OnMail(XmlNode node);
    public class NodeHolder
    {
        public XmlNode node;
    }


    public class TakeLatestEmail : BaseScript
    {
        private readonly string gmail = "com.google.android.gm";
        private readonly ADBUtils adb;
        private readonly Matcher matcher;
        private readonly NodeHolder holder;

        public TakeLatestEmail(string deviceId, Matcher matcher, NodeHolder holder) : base()
        {
            this.matcher = matcher;
            this.holder = holder;
            this.adb = new ADBUtils(deviceId);
            this.action = Action;
        }

        private void Action()
        {
            var stopGmail = new BaseScript()
            {
                action = () =>
                {
                    adb.stopPackage(gmail);
                    Console.WriteLine("stop Gmail");
                },
                onCompleted = () =>
                {
                    Thread.Sleep(500);
                }
            };
            var startGmail = new BaseScript()
            {
                action = () =>
                {
                    this.adb.startPackage(gmail);
                    Console.WriteLine("start Gmail");
                },
                onCompleted = () =>
                {
                    Thread.Sleep(1000);
                }
            };
            var clickMenu = new BaseScript()
            {
                action = () =>
                {
                    this.adb.tap(50, 100);
                    Console.WriteLine("click Menu Gmail");
                },
                onCompleted = () =>
                {
                    Thread.Sleep(1000);
                }
            };
            var showAllMail = new BaseScript()
            {
                action = () =>
                {
                    this.adb.tap(200, 200);
                    Console.WriteLine("click show all Gmail");
                },
                onCompleted = () =>
                {
                    Thread.Sleep(1000);
                }
            };

            XmlNode node = null;

            var takeMail = new BaseScript(10)
            {
                canAction = () =>
                {
                    var screen = this.adb.getCurrentView();
                    var needView = ViewUtils.findNode(screen, matcher);
                    node = needView.FirstOrDefault();
                    return needView.Count != 0;
                },
                onCompleted = () =>
                {
                    this.holder.node = node;
                    Thread.Sleep(500);
                },
                wait = () =>
                {
                    this.adb.swipe(100, 200, 500, 200);
                    Thread.Sleep(1000);
                },
            };

            this.AddNext(
                stopGmail.AddNext(
                    startGmail.AddNext(
                        clickMenu.AddNext(
                            showAllMail.AddNext(
                                takeMail)
                            )
                        )
                    )
                );
        }
    }
}
