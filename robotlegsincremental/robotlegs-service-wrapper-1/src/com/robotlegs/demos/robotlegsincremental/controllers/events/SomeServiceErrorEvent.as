package com.robotlegs.demos.robotlegsincremental.controllers.events
{
    import flash.events.Event;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeServiceErrorEvent extends Event
    {
        public static const ALTERNATIVE_DATA_REQUESTED:String="alternativeDataRequested";
        public static const DATA_ERROR:String="dataError";

        public function SomeServiceErrorEvent(type:String, someServiceError:String, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            _someServiceError=someServiceError;
            super(type, bubbles, cancelable);
        }

        private var _someServiceError:String;

        override public function clone():Event
        {
            return new SomeServiceErrorEvent(type, someServiceError, bubbles, cancelable);
        }

        public function get someServiceError():String
        {
            return _someServiceError;
        }
    }
}
