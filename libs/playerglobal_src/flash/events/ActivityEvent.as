﻿package flash.events
{

    public class ActivityEvent extends Event {
        private var m_activating:Boolean;
        public static const ACTIVITY:String = "activity";

        public function ActivityEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, activating:Boolean = false) {
            super(type, bubbles, cancelable);
            this.m_activating = activating;
            return;
        }
        public function get activating() : Boolean {
            return this.m_activating;
        }
        public function set activating(value:Boolean) : void {
            this.m_activating = value;
            return;
        }
        override public function toString() : String {
            return formatToString("ActivityEvent", "type", "bubbles", "cancelable", "eventPhase", "activating");
        }
        override public function clone() : Event {
            return new ActivityEvent(type, bubbles, cancelable, this.activating);
        }
    }
}
