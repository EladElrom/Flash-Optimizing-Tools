﻿package flash.display
{

    public class Bitmap extends DisplayObject {

        public function Bitmap(bitmapData:BitmapData = null, pixelSnapping:String = "auto", smoothing:Boolean = false);

        public function set bitmapData(value:BitmapData) : void;

        public function get pixelSnapping() : String;

        public function set pixelSnapping(value:String) : void;

        public function set smoothing(value:Boolean) : void;

        public function get bitmapData() : BitmapData;

        public function get smoothing() : Boolean;

    }
}
