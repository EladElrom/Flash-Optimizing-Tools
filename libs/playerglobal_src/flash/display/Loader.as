﻿package flash.display
{
    import flash.net.*;
    import flash.system.*;
    import flash.utils.*;

    public class Loader extends DisplayObjectContainer {

        public function Loader() {
            return;
        }
        public function get contentLoaderInfo() : LoaderInfo;

        private function _load(request:URLRequest, checkPolicyFile:Boolean, applicationDomain:ApplicationDomain, securityDomain:SecurityDomain, deblockingFilter:Number) : void;

        public function load(request:URLRequest, context:LoaderContext = null) : void {
            var _loc_3:* = this._buildLoaderContext(context);
            var _loc_4:Number = 0;
            _loc_4 = this._getJPEGLoaderContextdeblockingfilter(_loc_3);
            this._load(request, _loc_3.checkPolicyFile, _loc_3.applicationDomain, _loc_3.securityDomain, _loc_4);
            return;
        }
        override public function removeChild(child:DisplayObject) : DisplayObject {
            Error.throwError(IllegalOperationError, 2069);
            return null;
        }
        private function _getJPEGLoaderContextdeblockingfilter(context:Object) : Number;

        public function loadBytes(bytes:ByteArray, context:LoaderContext = null) : void {
            var _loc_3:* = this._buildLoaderContext(context);
            var _loc_4:Number = 0;
            _loc_4 = this._getJPEGLoaderContextdeblockingfilter(_loc_3);
            this._loadBytes(bytes, _loc_3.checkPolicyFile, _loc_3.applicationDomain, _loc_3.securityDomain, _loc_4);
            return;
        }
        private function _buildLoaderContext(context:LoaderContext) : LoaderContext {
            if (context == null){
                context = new LoaderContext();
            }
            if (context.applicationDomain == null){
                context.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
            }
            return context;
        }
        override public function addChildAt(child:DisplayObject, index:int) : DisplayObject {
            Error.throwError(IllegalOperationError, 2069);
            return null;
        }
        override public function setChildIndex(child:DisplayObject, index:int) : void {
            Error.throwError(IllegalOperationError, 2069);
            return;
        }
        override public function removeChildAt(index:int) : DisplayObject {
            Error.throwError(IllegalOperationError, 2069);
            return null;
        }
        private function _loadBytes(bytes:ByteArray, checkPolicyFile:Boolean, applicationDomain:ApplicationDomain, securityDomain:SecurityDomain, deblockingFilter:Number) : void;

        public function close() : void;

        public function get content() : DisplayObject;

        public function unloadAndStop(gc:Boolean = true) : void {
            this._unload(true, gc);
            return;
        }
        override public function addChild(child:DisplayObject) : DisplayObject {
            Error.throwError(IllegalOperationError, 2069);
            return null;
        }
        private function _unload(halt:Boolean, gc:Boolean) : void;

        public function unload() : void {
            this._unload(false, false);
            return;
        }
    }
}
