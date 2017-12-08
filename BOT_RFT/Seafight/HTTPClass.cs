using System;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Text;

namespace SFCollector.Seafight
{
	// Token: 0x0200000B RID: 11
	public class HTTPClass
	{
		// Token: 0x06000046 RID: 70 RVA: 0x000021CD File Offset: 0x000003CD
		[DebuggerNonUserCode]
		public HTTPClass()
		{
		}

		// Token: 0x06000047 RID: 71 RVA: 0x00003238 File Offset: 0x00001438
		public static string CreateRequest(HTTPClass.Method Meth, Uri URI, string PostData = "", string Reff = "")
		{
			string result;
			switch (Meth)
			{
			case HTTPClass.Method.Post:
				try
				{
					HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(URI);
					httpWebRequest.Method = "POST";
					httpWebRequest.ContentType = "application/x-www-form-urlencoded";
					httpWebRequest.UserAgent = "Mozilla/5.0 (Windows NT 5.1; rv:15.0) Gecko/20100101 Firefox/15.0.1";
					httpWebRequest.CookieContainer = HTTPClass.tmpcookies;
					httpWebRequest.Referer = Reff;
					httpWebRequest.Accept = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
					byte[] bytes = Encoding.UTF8.GetBytes(PostData);
					httpWebRequest.ContentLength = (long)bytes.Length;
					Stream stream = httpWebRequest.GetRequestStream();
					stream.Write(bytes, 0, bytes.Length);
					stream.Close();
					HttpWebResponse httpWebResponse = (HttpWebResponse)httpWebRequest.GetResponse();
					httpWebResponse.Cookies = httpWebRequest.CookieContainer.GetCookies(httpWebRequest.RequestUri);
					stream = httpWebResponse.GetResponseStream();
					StreamReader streamReader = new StreamReader(stream);
					string text = streamReader.ReadToEnd();
					streamReader.Close();
					stream.Close();
					httpWebResponse.Close();
					result = text;
					return result;
				}
				catch (Exception expr_F4)
				{
					result = "SERVER OFFLINE";
					return result;
				}
				break;
			case HTTPClass.Method.Get:
				break;
			default:
				return "";
			}
			try
			{
				HttpWebRequest httpWebRequest2 = (HttpWebRequest)WebRequest.Create(URI);
				httpWebRequest2.Method = "GET";
				httpWebRequest2.ContentType = "application/x-www-form-urlencoded";
				httpWebRequest2.UserAgent = "Mozilla/5.0 (Windows NT 5.1; rv:15.0) Gecko/20100101 Firefox/15.0.1";
				httpWebRequest2.Accept = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
				httpWebRequest2.CookieContainer = HTTPClass.tmpcookies;
				httpWebRequest2.Referer = Reff;
				HttpWebResponse httpWebResponse2 = (HttpWebResponse)httpWebRequest2.GetResponse();
				httpWebResponse2.Cookies = httpWebRequest2.CookieContainer.GetCookies(httpWebRequest2.RequestUri);
				StreamReader streamReader2 = new StreamReader(httpWebResponse2.GetResponseStream());
				string text2 = streamReader2.ReadToEnd();
				streamReader2.Close();
				httpWebResponse2.Close();
				result = text2;
			}
			catch (Exception expr_1AE)
			{
				result = "SERVER OFFLINE";
			}
			return result;
		}

		// Token: 0x0400001A RID: 26
		public static CookieContainer tmpcookies = new CookieContainer();

		// Token: 0x0200000C RID: 12
		public enum Method
		{
			// Token: 0x0400001C RID: 28
			Post,
			// Token: 0x0400001D RID: 29
			Get
		}
	}
}
