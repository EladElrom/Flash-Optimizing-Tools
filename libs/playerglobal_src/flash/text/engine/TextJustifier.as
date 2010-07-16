﻿package flash.text.engine
{

    public class TextJustifier extends Object {

        public function TextJustifier(locale:String, lineJustification:String) {
            if (getQualifiedClassName(this) == "flash.text.engine::TextJustifier"){
                Error.throwError(ArgumentError, 2012, "TextJustifier");
            }
            this.setLocale(locale);
            this.lineJustification = lineJustification;
            return;
        }
        public function set lineJustification(value:String) : void;

        public function get locale() : String;

        private function setLocale(value:String) : void;

        public function clone() : TextJustifier {
            return null;
        }
        public function get lineJustification() : String;

        public static function getJustifierForLocale(locale:String) : TextJustifier {
            if (locale != null){
            }
            if (locale.length < 2){
                Error.throwError(ArgumentError, 2004, "previousLine");
            }
            var _loc_2:* = locale.substr(0, 2);
            if (_loc_2 != "zh"){
            }
            if (_loc_2 != "ja"){
            }
            if (_loc_2 == "ko"){
                return new EastAsianJustifier(locale);
            }
            return new SpaceJustifier(locale);
        }
    }
}
