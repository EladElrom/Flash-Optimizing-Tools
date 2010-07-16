﻿package flash.media
{
    import flash.utils.*;

    final public class SoundMixer extends Object {

        public function SoundMixer() {
            return;
        }
        public static function set soundTransform(sndTransform:SoundTransform) : void;

        public static function areSoundsInaccessible() : Boolean;

        public static function get bufferTime() : int;

        public static function computeSpectrum(outputArray:ByteArray, FFTMode:Boolean = false, stretchFactor:int = 0) : void;

        public static function set bufferTime(bufferTime:int) : void;

        public static function get soundTransform() : SoundTransform;

        public static function stopAll() : void;

    }
}
