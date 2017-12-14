﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight
{
    public class Reader
    {
        public int index { get; set; }
        public byte[] buffer { get; private set; }

        public Reader(int index, byte[] buffer)
        {
            this.index = index;
            this.buffer = buffer;
        }

        public int ReadByte()
        {
            int result;
            try
            {
                result = (int)this.buffer[this.index];
                this.index++;
            }
            catch (Exception)
            {
                result = 0;
            }
            return result;
        }

        public int ReadShort()
        {
            int result;
            try
            {
                result = (int)((short)(((int)this.buffer[this.index] << 8) + (int)this.buffer[1 + this.index]));
                this.index += 2;
            }
            catch (Exception)
            {
                result = 0;
            }
            return result;
        }

        public int ReadInt()
        {
            int result;
            try
            {
                result = ((int)this.buffer[this.index] << 24) + ((int)this.buffer[1 + this.index] << 16) + ((int)this.buffer[2 + this.index] << 8) + (int)this.buffer[3 + this.index];
                this.index += 4;
            }
            catch (Exception)
            {
                result = 0;
            }
            return result;
        }

        public double ReadDouble()
        {
            byte[] array = new byte[8];
            double result;
            try
            {
                for (int i = 8; i > 0; i--)
                {
                    array[i - 1] = this.buffer[this.index];
                    this.index++;
                }
                result = BitConverter.ToDouble(array, 0);
            }
            catch (Exception)
            {
                result = 0.0;
            }
            return result;
        }

        public double ReadFloat()
        {
            byte[] array = new byte[4];
            double result;
            try
            {
                for (int i = 4; i > 0; i--)
                {
                    array[i - 1] = this.buffer[this.index];
                    this.index++;
                }
                result = (double)BitConverter.ToSingle(array, 0);
            }
            catch (Exception)
            {
                result = 0.0;
            }
            return result;
        }

        public int Read(byte[] buffer, int index)
        {
            int result;
            try
            {
                result = (int)((short)(((int)buffer[index] << 8) + (int)buffer[1 + index]));
            }
            catch (Exception)
            {
                result = 0;
            }
            return result;
        }

        public string ReadString()
        {
            string result = "";
            int num = Read(this.buffer, this.index);
            this.index += 2;
            if (num > 0)
            {
                byte[] array = new byte[num];
                try
                {
                    for (int i = 0; i < array.Length; i++)
                    {
                        array[i] = this.buffer[this.index];
                        this.index++;
                    }
                    result = Encoding.UTF8.GetString(array);
                }
                catch (Exception)
                {
                    result = "";
                }
            }
            return result;
        }

        public bool ReadBool()
        {
            bool result;
            try
            {
                result = (this.buffer[this.index] == 1);
                this.index++;
            }
            catch (Exception)
            {
                result = false;
            }
            return result;
        }

        public byte[] ReadBytes(int count)
        {
            byte[] result;
            try
            {
                result = this.buffer.Take(count).ToArray();
                this.index += count;
            }
            catch (Exception)
            {
                result = null;
            }
            return result;
        }  

        public static byte[] WriteShort(int value)
        {
            return BitConverter.GetBytes((short)value).Reverse<byte>().ToArray<byte>();
        }

        public static byte[] WriteDouble(double value)
        {
            return BitConverter.GetBytes(value).Reverse<byte>().ToArray<byte>();
        }
        
        public static byte[] WriteInt(int value)
        {
            return BitConverter.GetBytes(value).Reverse<byte>().ToArray<byte>();
        }

        public static byte[] WriteBool(bool value)
        {
            return BitConverter.GetBytes(value).Reverse<byte>().ToArray<byte>();
        }

        public static byte[] WriteByte(int value)
        {
            return BitConverter.GetBytes(value).Reverse<byte>().ToArray<byte>();
        }

        public static byte[] WriteString(string value)
        {
            List<byte[]> Buffer = new List<byte[]>();
            Buffer.Add(BitConverter.GetBytes((short)Encoding.ASCII.GetBytes(value).Length).Reverse<byte>().ToArray<byte>());
            Buffer.Add(Encoding.ASCII.GetBytes(value));
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }

        public static string GetString(int byteNum)
        {
            byte b = (byte)(byteNum);
            return Convert.ToChar(b).ToString();
        }
    }
}