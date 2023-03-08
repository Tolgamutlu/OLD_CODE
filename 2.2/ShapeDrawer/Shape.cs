using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SplashKitSDK;

namespace shapedrawer
{
    public class Shape
    {
        //FIELDS
        private Color _color;
        private float _x;
        private float _y;
        private int _width;
        private int _height;

        //PROPERTIES
        public Color Color
        {
            get { return _color; }
            set { _color = value; }
        }

        public int Width
        {
            get { return _width; }
            set { _width = value; }
        }
        public float X
        {
            get { return _x; }
            set { _x = value; }
        }

        public float Y
        {
            get { return _y; }
            set { _y = value; }
        }

        //CONSTRUCTOR
        public Shape()
        {
            _color = Color.Green;
            _x = 0;
            _y = 0;
            _width = 100;
            _height = 100;
        }

        //METHODS
        public void Draw()
        {
            SplashKit.FillRectangle(_color, _x, _y, _width, _height);
        }

        public bool IsAt(Point2D pt)
        {
            return SplashKit.PointInRectangle(pt, _color, new Rectangle { X = _x, Y = _y, Width = _width, Height = _height });
        }

    }
}
