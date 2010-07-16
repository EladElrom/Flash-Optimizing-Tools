﻿package flash.filters
{

    final public class BevelFilter extends BitmapFilter {

        public function BevelFilter(distance:Number = 4, angle:Number = 45, highlightColor:uint = 16777215, highlightAlpha:Number = 1, shadowColor:uint = 0, shadowAlpha:Number = 1, blurX:Number = 4, blurY:Number = 4, strength:Number = 1, quality:int = 1, type:String = "inner", knockout:Boolean = false) {
            this.distance = distance;
            this.angle = angle;
            this.highlightColor = highlightColor;
            this.highlightAlpha = highlightAlpha;
            this.shadowColor = shadowColor;
            this.shadowAlpha = shadowAlpha;
            this.blurX = blurX;
            this.blurY = blurY;
            this.quality = quality;
            this.strength = strength;
            this.type = type;
            this.knockout = knockout;
            return;
        }
        public function get strength() : Number;

        public function set strength(value:Number) : void;

        public function set shadowColor(value:uint) : void;

        public function get knockout() : Boolean;

        public function get highlightAlpha() : Number;

        public function get highlightColor() : uint;

        public function get blurX() : Number;

        public function get blurY() : Number;

        public function get angle() : Number;

        public function set highlightAlpha(value:Number) : void;

        override public function clone() : BitmapFilter {
            return new BevelFilter(this.distance, this.angle, this.highlightColor, this.highlightAlpha, this.shadowColor, this.shadowAlpha, this.blurX, this.blurY, this.strength, this.quality, this.type, this.knockout);
        }
        public function set highlightColor(value:uint) : void;

        public function set blurX(value:Number) : void;

        public function get shadowColor() : uint;

        public function set blurY(value:Number) : void;

        public function get shadowAlpha() : Number;

        public function set angle(value:Number) : void;

        public function set distance(value:Number) : void;

        public function set type(value:String) : void;

        public function get distance() : Number;

        public function get type() : String;

        public function set knockout(value:Boolean) : void;

        public function set shadowAlpha(value:Number) : void;

        public function set quality(value:int) : void;

        public function get quality() : int;

    }
}
