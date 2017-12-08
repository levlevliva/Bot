using SFCollector.Seafight.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace SFCollector.Seafight
{
    public class PositionCalculator
    {
        private static Thread _shipThread;

        private static void shipThread()
        {
            while (true)
            {
                try
                {
                    if (Account.position != null)
                    {
                        CalculateCoordinates(Account.position);
                        if (Account.route == null || (Account.route != null && Account.route.Count == 0))
                            Account.moving = false;
                    }
                    Thread.Sleep(100);
                }
                catch (Exception)
                {
                }
            }
        }

        public static void startShipThread()
        {
            stopShipThread();
            _shipThread.Start();
        }

        public static void stopShipThread()
        {
            if (_shipThread != null)
            {
                _shipThread.Abort();
            }
            _shipThread = new Thread(new ThreadStart(shipThread));
        }

        private static void CalculateCoordinates(PositionStub pos)
        {
            if (pos != null)
            {
                double num = Account.speed / simplySpeed(Account.speed);
                PositionStub gClass = new PositionStub(Account.position.X, Account.position.Y);
                gClass.Path = Account.route;
                if (gClass.Path != null && gClass.Path.Count > 0)
                {
                    try
                    {
                        if (pos.dX == 0.0 && pos.dY == 0.0)
                        {
                            pos.dX = pos.X;
                            pos.dY = pos.Y;
                        }
                        foreach (PositionStub current in gClass.Path)
                        {
                            PositionStub gClass2 = current;
                            if ((gClass.Path != null && gClass.Path.Count == 0) || gClass.Path == null)
                            {
                                break;
                            }
                            int num2 = gClass2.X - pos.X;
                            int num3 = gClass2.Y - pos.Y;
                            double num4 = Math.Sqrt(Math.Pow((double)num2, 2.0) + Math.Pow((double)num3, 2.0));
                            if (num4 > num || (num4 == 1.0 && num > 1.0))
                            {
                                double num5 = num / num4;
                                pos.dX += num5 * (double)num2;
                                pos.dY += num5 * (double)num3;
                                pos.X = (int)pos.dX;
                                pos.Y = (int)pos.dY;
                                if ((pos.X == gClass2.X && pos.Y == gClass2.Y) || num5 > 1.0)
                                {
                                    gClass.Path.Remove(gClass2);
                                }
                                break;
                            }
                            pos.dX = (double)gClass2.X;
                            pos.dY = (double)gClass2.Y;
                            pos = gClass2;
                            gClass.Path.Remove(gClass2);
                        }
                    }
                    catch (Exception)
                    {
                    }
                }
            }
        } 

        private static double simplySpeed(double Speed)
        {
            double result = 9.55;
            if (Speed > 9.5)
            {
                result = 7.5;
            }
            else if (Speed > 850.0)
            {
                result = 8.5;
            }
            return result;
        }
    }
}
