using Code.Properties;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;

namespace Code.Utils.Story
{
    internal class TaoTaiKhoanFacebook: BaseScript
    {
        private readonly string facebook = "com.facebook.katana/.LoginActivity";
        private readonly TaiKhoanFacebook account;
        private readonly ADBUtils adb;

        public TaoTaiKhoanFacebook(string deviceId, TaiKhoanFacebook account) : base()
        {
            this.account = account;
            this.account.IDThietBi = deviceId;
            this.adb = new ADBUtils(deviceId);
        }

        public override bool RunScript()
        {
            var script = new BaseScript();
            var stopAcivity = new BaseScript()
            {
                action = () =>
                {
                    adb.stopPackage(facebook);
                },
                onCompleted = () =>
                {
                    Thread.Sleep(500);
                }
            };
            var startLoginFacebook = new BaseScript()
            {
                action = () =>
                {
                    this.adb.startPackage(facebook);
                },
                onCompleted = () =>
                {
                    Thread.Sleep(500);
                }
            };

            var clickCreateNewAccount = waitAndClick((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "Create new account";
            }, 4);


            var clickGetStart = waitAndClick((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "Get started";
            }, 4);

            var inputFirstName = inputText((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "First name";
            }, 4, account.Ho);

            var inputLastName = inputText((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "Last name";
            }, 4, account.Ten);

            var clickNoneOfTheAbove = waitAndClick((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "NONE OF THE ABOVE";
            }, 4);

            var clickNext = waitAndClick((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "Next";
            }, 4);

            var clickBirthdayInput = waitAndClick((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "Birthday";
            }, 4);

            var setBirthdayInput = setBirthDay((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "2001";
            },
            (XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "2023";
            },
            (XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "SET";
            }
            );

            var clickGender = waitAndClick((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "Female";
            }, 4);

            var clickSignUpWithEmail = waitAndClick((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "Sign up with email";
            }, 4);

            var clickAllow = waitAndClick((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "DENY";
            }, 4);

            var inputEmail = inputInfo(account.TenDangNhap);
            var inputPass = inputInfo(account.MatKhau);
            var clickNotNow = waitAndClick((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "Not now";
            }, 4);
            var clickIAgree = waitAndClick((XmlNode n) =>
            {
                return n.Attributes["text"].InnerText == "I agree";
            }, 4);

            script.AddNext(stopAcivity
                .AddNext(startLoginFacebook
                .AddNext(clickCreateNewAccount
                .AddNext(clickGetStart
                .AddNext(clickNoneOfTheAbove
                .AddNext(inputFirstName
                .AddNext(inputLastName
                .AddNext(clickNext
                .AddNext(clickBirthdayInput
                .AddNext(setBirthdayInput
                .AddNext(clickNext
                .AddNext(clickGender
                .AddNext(clickNext
                .AddNext(clickAllow
                .AddNext(clickSignUpWithEmail
                .AddNext(inputEmail
                .AddNext(clickNext
                .AddNext(inputPass
                .AddNext(clickNext
                .AddNext(clickNotNow
                .AddNext(clickIAgree)))))))))))))))))))));
            return script.RunScript();
        }

        private BaseScript inputInfo(string text)
        {
            return new BaseScript(-1)
            {

                action = () =>
                {
                    adb.typeText(text);
                    Thread.Sleep(1000);
                }
            };
        }

        private BaseScript inputText(Matcher matcher, double maxWait, string text, int clickNumber = 1)
        {
            DateTime startTime = DateTime.UtcNow;
            XmlNode node = null;
            return new BaseScript(-1)
            {
                init = () =>
                {
                    Thread.Sleep(1000);
                    startTime = DateTime.UtcNow;
                },
                canAction = () =>
                {
                    var screen = this.adb.getCurrentView();
                    var needView = ViewUtils.findNode(screen, matcher);
                    node = needView.FirstOrDefault();
                    return needView.Count != 0;
                },
                wait = () =>
                {
                    Thread.Sleep(200);
                },
                action = () =>
                {
                    var b = Bound.ofXMLNode(node);
                    var x = b.x + b.h / 2;
                    var y = b.y + b.w / 2;
                    while (clickNumber-- != 0)
                    {
                        adb.tap(x, y);
                        Thread.Sleep(500);
                        adb.typeText(text);
                        Thread.Sleep(1000);
                    }
                },
                isError = () =>
                {
                    var t = System.DateTime.UtcNow - startTime;
                    Console.WriteLine(t.TotalSeconds);
                    return t.TotalSeconds > maxWait;
                }
            };
        }

        private BaseScript waitAndClick(Matcher matcher, double maxWait, int clickNumber = 1)
        {
            DateTime startTime = DateTime.UtcNow;
            XmlNode node = null;
            return new BaseScript(-1)
            {
                init = () =>
                {
                    Thread.Sleep(1000);
                    startTime = DateTime.UtcNow;
                },
                canAction = () =>
                {
                    var screen = this.adb.getCurrentView();
                    var needView = ViewUtils.findNode(screen, matcher);
                    Console.WriteLine(needView.Count);
                    node = needView.FirstOrDefault();
                    return needView.Count != 0;
                },
                wait = () =>
                {
                    Thread.Sleep(200);
                },
                action = () =>
                {
                    var b = Bound.ofXMLNode(node);
                    var x = b.x + b.h / 2;
                    var y = b.y + b.w / 2;
                    Console.WriteLine(x + " " + y);
                    while (clickNumber-- != 0)
                    {
                        adb.tap(x, y);
                        Thread.Sleep(200);
                    }
                },
                isError = () =>
                {
                    var t = System.DateTime.UtcNow - startTime;
                    Console.WriteLine(t.TotalSeconds);
                    return t.TotalSeconds > maxWait;
                }
            };
        }
        private BaseScript setBirthDay(Matcher matcher, Matcher matcherNumber, Matcher matcherSet, int maxTry = 12)
        {
            XmlNode node = null;
            XmlNode number = null;
            XmlNode setButton = null;
            var xSetButton = 0;
            var ySetButton = 0;
            var xNumber = 0;
            var yNumber = 0;
            return new BaseScript(maxTry)
            {
                init = () =>
                {
                    Thread.Sleep(500);
                    var screen = this.adb.getCurrentView();
                    var numberView = ViewUtils.findNode(screen, matcherNumber);
                    number = numberView.FirstOrDefault();
                    screen = this.adb.getCurrentView();
                    var setView = ViewUtils.findNode(screen, matcherSet);
                    setButton = setView.FirstOrDefault();

                    var b1 = Bound.ofXMLNode(number);
                    xNumber = b1.x + b1.h / 2;
                    yNumber = b1.y + b1.w / 2;
                    var b2 = Bound.ofXMLNode(setButton);
                    xSetButton = b2.x + b2.h / 2;
                    ySetButton = b2.y + b2.w / 2;
                },
                canAction = () =>
                {
                    var screen = this.adb.getCurrentView();
                    var needView = ViewUtils.findNode(screen, matcher);
                    node = needView.FirstOrDefault();
                    return needView.Count != 0;
                },
                wait = () =>
                {
                    this.adb.swipe(xNumber, yNumber, xSetButton, ySetButton);
                    maxTry--;
                },
                action = () =>
                {
                    adb.tap(xSetButton, ySetButton);
                },
                isError = () =>
                {
                    return maxTry <= 0;
                }
            };
        }
    }
}
