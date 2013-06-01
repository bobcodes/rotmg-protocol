package com.google.analytics.core
{
[CLASS1567]   import com.google.analytics.v4.GoogleAnalyticsAPI;
   import flash.errors.IllegalOperationError;


   public class TrackerCache extends Object implements GoogleAnalyticsAPI
   {
      public function TrackerCache(param1:GoogleAnalyticsAPI=null) {
         super();
         this.tracker=param1;
         _ar=[];
         return;
      }

      public static var CACHE_THROW_ERROR:Boolean;

      public function size() : uint {
         return _ar.length;
      }

      public function flush() : void {
         var _loc1_:Object = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(tracker==null)
         {
            return;
         }
         if(size()>0)
         {
            _loc4_=_ar.length;
            while(_loc5_<_loc4_)
            {
               _loc1_=_ar.shift();
               _loc2_=_loc1_.name as String;
               _loc3_=_loc1_.args as Array;
               if(!(_loc2_==null)&&_loc2_ in tracker)
               {
                  (tracker[_loc2_] as Function).apply(tracker,_loc3_);
               }
               _loc5_++;
            }
         }
         return;
      }

      public function enqueue(param1:String, ... rest) : Boolean {
         if(param1==null)
         {
            return false;
         }
         _ar.push(
            {
               name:param1,
               args:rest
            }
         );
         return true;
      }

      public function link(param1:String, param2:Boolean=false) : void {
         enqueue("link",param1,param2);
         return;
      }

      public function addOrganic(param1:String, param2:String) : void {
         enqueue("addOrganic",param1,param2);
         return;
      }

      public function setAllowLinker(param1:Boolean) : void {
         enqueue("setAllowLinker",param1);
         return;
      }

      public function trackEvent(param1:String, param2:String, param3:String=null, param4:Number=NaN) : Boolean {
         enqueue("trackEvent",param1,param2,param3,param4);
         return true;
      }

      public function getLinkerUrl(param1:String="", param2:Boolean=false) : String {
         if(CACHE_THROW_ERROR)
         {
            throw new IllegalOperationError("The tracker is not ready and you can use the \'getLinkerUrl\' method for the moment.");
         }
         else
         {
            return "";
         }
      }

      public function getClientInfo() : Boolean {
         if(CACHE_THROW_ERROR)
         {
            throw new IllegalOperationError("The tracker is not ready and you can use the \'getClientInfo\' method for the moment.");
         }
         else
         {
            return false;
         }
      }

      public function trackTrans() : void {
         enqueue("trackTrans");
         return;
      }

      public function trackPageview(param1:String="") : void {
         enqueue("trackPageview",param1);
         return;
      }

      public function setClientInfo(param1:Boolean) : void {
         enqueue("setClientInfo",param1);
         return;
      }

      public function linkByPost(param1:Object, param2:Boolean=false) : void {
         enqueue("linkByPost",param1,param2);
         return;
      }

      public var tracker:GoogleAnalyticsAPI;

      public function setCookieTimeout(param1:int) : void {
         enqueue("setCookieTimeout",param1);
         return;
      }

      public function isEmpty() : Boolean {
         return _ar.length==0;
      }

      public function getDetectTitle() : Boolean {
         if(CACHE_THROW_ERROR)
         {
            throw new IllegalOperationError("The tracker is not ready and you can use the \'getDetectTitle\' method for the moment.");
         }
         else
         {
            return false;
         }
      }

      public function resetSession() : void {
         enqueue("resetSession");
         return;
      }

      public function setDetectFlash(param1:Boolean) : void {
         enqueue("setDetectFlash",param1);
         return;
      }

      public function clear() : void {
         _ar=[];
         return;
      }

      public function setCampNameKey(param1:String) : void {
         enqueue("setCampNameKey",param1);
         return;
      }

      public function addItem(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:int) : void {
         enqueue("addItem",param1,param2,param3,param4,param5,param6);
         return;
      }

      public function createEventTracker(param1:String) : EventTracker {
         if(CACHE_THROW_ERROR)
         {
            throw new IllegalOperationError("The tracker is not ready and you can use the \'createEventTracker\' method for the moment.");
         }
         else
         {
            return null;
         }
      }

      public function clearIgnoredOrganic() : void {
         enqueue("clearIgnoredOrganic");
         return;
      }

      public function setVar(param1:String) : void {
         enqueue("setVar",param1);
         return;
      }

      public function setDomainName(param1:String) : void {
         enqueue("setDomainName",param1);
         return;
      }

      public function setCampSourceKey(param1:String) : void {
         enqueue("setCampSourceKey",param1);
         return;
      }

      public function addTrans(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:String, param7:String, param8:String) : void {
         if(CACHE_THROW_ERROR)
         {
            throw new IllegalOperationError("The tracker is not ready and you can use the \'addTrans\' method for the moment.");
         }
         else
         {
            return;
         }
      }

      public function setCampContentKey(param1:String) : void {
         enqueue("setCampContentKey",param1);
         return;
      }

      public function setLocalServerMode() : void {
         enqueue("setLocalServerMode");
         return;
      }

      public function getLocalGifPath() : String {
         if(CACHE_THROW_ERROR)
         {
            throw new IllegalOperationError("The tracker is not ready and you can use the \'getLocalGifPath\' method for the moment.");
         }
         else
         {
            return "";
         }
      }

      public function setAllowAnchor(param1:Boolean) : void {
         enqueue("setAllowAnchor",param1);
         return;
      }

      public function clearIgnoredRef() : void {
         enqueue("clearIgnoredRef");
         return;
      }

      public function setLocalGifPath(param1:String) : void {
         enqueue("setLocalGifPath",param1);
         return;
      }

      public function getVersion() : String {
         if(CACHE_THROW_ERROR)
         {
            throw new IllegalOperationError("The tracker is not ready and you can use the \'getVersion\' method for the moment.");
         }
         else
         {
            return "";
         }
      }

      public function setCookiePath(param1:String) : void {
         enqueue("setCookiePath",param1);
         return;
      }

      public function setSampleRate(param1:Number) : void {
         enqueue("setSampleRate",param1);
         return;
      }

      public function setDetectTitle(param1:Boolean) : void {
         enqueue("setDetectTitle",param1);
         return;
      }

      public function setAllowHash(param1:Boolean) : void {
         enqueue("setAllowHash",param1);
         return;
      }

      public function addIgnoredOrganic(param1:String) : void {
         enqueue("addIgnoredOrganic",param1);
         return;
      }

      public function setCampNOKey(param1:String) : void {
         enqueue("setCampNOKey",param1);
         return;
      }

      public function getServiceMode() : ServerOperationMode {
         if(CACHE_THROW_ERROR)
         {
            throw new IllegalOperationError("The tracker is not ready and you can use the \'getServiceMode\' method for the moment.");
         }
         else
         {
            return null;
         }
      }

      public function setLocalRemoteServerMode() : void {
         enqueue("setLocalRemoteServerMode");
         return;
      }

      public function cookiePathCopy(param1:String) : void {
         enqueue("cookiePathCopy",param1);
         return;
      }

      private var _ar:Array;

      public function getDetectFlash() : Boolean {
         if(CACHE_THROW_ERROR)
         {
            throw new IllegalOperationError("The tracker is not ready and you can use the \'getDetectFlash\' method for the moment.");
         }
         else
         {
            return false;
         }
      }

      public function setCampaignTrack(param1:Boolean) : void {
         enqueue("setCampaignTrack",param1);
         return;
      }

      public function clearOrganic() : void {
         enqueue("clearOrganic");
         return;
      }

      public function setCampTermKey(param1:String) : void {
         enqueue("setCampTermKey",param1);
         return;
      }

      public function addIgnoredRef(param1:String) : void {
         enqueue("addIgnoredRef",param1);
         return;
      }

      public function setCampMediumKey(param1:String) : void {
         enqueue("setCampMediumKey",param1);
         return;
      }

      public function setSessionTimeout(param1:int) : void {
         enqueue("setSessionTimeout",param1);
         return;
      }

      public function setRemoteServerMode() : void {
         enqueue("setRemoteServerMode");
         return;
      }

      public function element() : * {
         return _ar[0];
      }

      public function getAccount() : String {
         if(CACHE_THROW_ERROR)
         {
            throw new IllegalOperationError("The tracker is not ready and you can use the \'getAccount\' method for the moment.");
         }
         else
         {
            return "";
         }
      }
   }
[/CLASS]
}