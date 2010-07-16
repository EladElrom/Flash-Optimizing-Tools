﻿package flash.events
{

    public class HTTPStatusEvent extends Event {
        private var m_status:int;
        public static const HTTP_STATUS:String = "httpStatus";

        public function HTTPStatusEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, status:int = 0) {
            super(type, bubbles, cancelable);
            this.m_status = status;
            return;
        }
        public function get status() : int {
            return this.m_status;
        }
        override public function toString() : String {
            return formatToString("HTTPStatusEvent", "type", "bubbles", "cancelable", "eventPhase", "status");
        }
        override public function clone() : Event {
            return new HTTPStatusEvent(type, bubbles, cancelable, this.status);
        }
    }
}
