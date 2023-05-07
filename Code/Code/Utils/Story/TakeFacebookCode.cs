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
    public class TakeFacebookCode : TakeLatestEmail
    {
        private static readonly Regex facebookConfirmCode = new Regex("^[\\d]+ is your Facebook confirmation code$");

        private static readonly Matcher facebookCode = (node) =>
        {
            var isTrue = node.HasChildNodes && node.ChildNodes.Count == 6;

            if (isTrue)
            {
                isTrue = node.ChildNodes[1].Attributes["text"].InnerText == "Facebook";
            }

            if (isTrue)
            {
                var text = node.ChildNodes[3].Attributes["text"].InnerText;
                isTrue = facebookConfirmCode.IsMatch(text);
            }

            return isTrue;
        };

        public TakeFacebookCode(string deviceId, NodeHolder holder) : base(deviceId, facebookCode, holder)
        {
        }

        public static string GetCode(XmlNode node)
        {
            var text = node.ChildNodes[3].Attributes["text"].InnerText;
            return text.Split(' ')[0];
        }

    }
}
