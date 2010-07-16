﻿package flash.events
{
    import __AS3__.vec.*;
    import flash.display.*;
    import flash.utils.*;

    public class ShaderEvent extends Event {
        private var m_bitmapData:BitmapData;
        private var m_vector:Vector.<Number>;
        private var m_byteArray:ByteArray;
        public static const COMPLETE:String = "complete";

        public function ShaderEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, bitmap:BitmapData = null, array:ByteArray = null, vector:Vector.<Number> = null) {
            super(type, bubbles, cancelable);
            this.m_bitmapData = bitmap;
            this.m_byteArray = array;
            this.m_vector = vector;
            return;
        }
        public function set byteArray(bArray:ByteArray) {
            this.m_byteArray = bArray;
            return;
        }
        public function get vector() : Vector.<Number> {
            return this.m_vector;
        }
        public function set vector(v:Vector.<Number>) {
            this.m_vector = v;
            return;
        }
        override public function toString() : String {
            return formatToString("ShaderEvent", "type", "bubbles", "cancelable", "eventPhase", "bitmapData", "byteArray", "vector");
        }
        public function get byteArray() : ByteArray {
            return this.m_byteArray;
        }
        public function set bitmapData(bmpData:BitmapData) {
            this.m_bitmapData = bmpData;
            return;
        }
        public function get bitmapData() : BitmapData {
            return this.m_bitmapData;
        }
        override public function clone() : Event {
            return new ShaderEvent(type, bubbles, cancelable, this.bitmapData, this.byteArray, this.vector);
        }
    }
}
