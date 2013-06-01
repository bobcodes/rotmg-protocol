package com.google.analytics.data
{
[CLASS1769]   import com.google.analytics.utils.Timespan;


   public class UTMA extends UTMCookie
   {
      public function UTMA(param1:Number=NaN, param2:Number=NaN, param3:Number=NaN, param4:Number=NaN, param5:Number=NaN, param6:Number=NaN) {
         super("utma","__utma",["domainHash","sessionId","firstTime","lastTime","currentTime","sessionCount"],Timespan.twoyears*1000);
         this.domainHash=param1;
         this.sessionId=param2;
         this.firstTime=param3;
         this.lastTime=param4;
         this.currentTime=param5;
         this.sessionCount=param6;
         return;
      }

      public function get lastTime() : Number {
         return _lastTime;
      }

      public function set lastTime(param1:Number) : void {
         _lastTime=param1;
         update();
         return;
      }

      public function set currentTime(param1:Number) : void {
         _currentTime=param1;
         update();
         return;
      }

      public function get sessionId() : Number {
         return _sessionId;
      }

      private var _sessionId:Number;

      private var _domainHash:Number;

      public function get sessionCount() : Number {
         return _sessionCount;
      }

      public function get firstTime() : Number {
         return _firstTime;
      }

      private var _firstTime:Number;

      public function get currentTime() : Number {
         return _currentTime;
      }

      private var _currentTime:Number;

      private var _lastTime:Number;

      public function set domainHash(param1:Number) : void {
         _domainHash=param1;
         update();
         return;
      }

      public function set sessionId(param1:Number) : void {
         _sessionId=param1;
         update();
         return;
      }

      public function set sessionCount(param1:Number) : void {
         _sessionCount=param1;
         update();
         return;
      }

      private var _sessionCount:Number;

      public function get domainHash() : Number {
         return _domainHash;
      }

      public function set firstTime(param1:Number) : void {
         _firstTime=param1;
         update();
         return;
      }
   }
[/CLASS]
}