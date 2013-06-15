package com.google.analytics
{
   import com.google.analytics.utils.Version;
   import com.google.analytics.external.AdSenseGlobals;
   import com.google.analytics.utils.Environment;
   import flash.events.Event;
   import com.google.analytics.v4.Configuration;
   import com.google.analytics.core.IdleTimer;
   import com.google.analytics.debug.DebugConfiguration;
   import com.google.analytics.core.Buffer;
   import com.google.analytics.v4.GoogleAnalyticsAPI;
   import com.google.analytics.v4.Bridge;
   import com.google.analytics.core.EventTracker;
   import flash.display.DisplayObject;
   import com.google.analytics.external.JavascriptProxy;
   import com.google.analytics.external.HTMLDOM;
   import flash.events.EventDispatcher;
   import com.google.analytics.core.GIFRequest;
   import com.google.analytics.debug.Layout;
   import com.google.analytics.core.TrackerCache;
   import com.google.analytics.core.TrackerMode;
   import com.google.analytics.events.AnalyticsEvent;
   import com.google.analytics.core.Ecommerce;
   import com.google.analytics.core.ga_internal;
   import com.google.analytics.v4.Tracker;
   import com.google.analytics.core.ServerOperationMode;

   use namespace ga_internal;

   public class GATracker extends Object implements AnalyticsTracker
   {
      public function GATracker(param1:DisplayObject, param2:String, param3:String="AS3", param4:Boolean=false, param5:Configuration=null, param6:DebugConfiguration=null) {
         super();
         _display=param1;
         _eventDispatcher=new EventDispatcher(this);
         _tracker=new TrackerCache();
         this.account=param2;
         this.mode=param3;
         this.visualDebug=param4;
         if(!param6)
         {
            this.debug=new DebugConfiguration();
         }
         if(!param5)
         {
            this.config=new Configuration(param6);
         }
         else
         {
            this.config=param5;
         }
         if(autobuild)
         {
            _factory();
         }
         return;
      }

      public static var version:Version = API.version;

      public static var autobuild:Boolean = true;

      public function link(param1:String, param2:Boolean=false) : void {
         _tracker.link(param1,param2);
         return;
      }

      public function addOrganic(param1:String, param2:String) : void {
         _tracker.addOrganic(param1,param2);
         return;
      }

      public function setAllowLinker(param1:Boolean) : void {
         _tracker.setAllowLinker(param1);
         return;
      }

      public function trackEvent(param1:String, param2:String, param3:String=null, param4:Number=NaN) : Boolean {
         return _tracker.trackEvent(param1,param2,param3,param4);
      }

      public function getLinkerUrl(param1:String="", param2:Boolean=false) : String {
         return _tracker.getLinkerUrl(param1,param2);
      }

      private var _adSense:AdSenseGlobals;

      public function setCookieTimeout(param1:int) : void {
         _tracker.setCookieTimeout(param1);
         return;
      }

      public function trackTrans() : void {
         _tracker.trackTrans();
         return;
      }

      public function getClientInfo() : Boolean {
         return _tracker.getClientInfo();
      }

      public function trackPageview(param1:String="") : void {
         _tracker.trackPageview(param1);
         return;
      }

      public function setClientInfo(param1:Boolean) : void {
         _tracker.setClientInfo(param1);
         return;
      }

      public function get account() : String {
         return _account;
      }

      private var _env:Environment;

      public function linkByPost(param1:Object, param2:Boolean=false) : void {
         [OFS2]_tracker[/OFS].[OFS7]linkByPost[/OFS][OFS7]([/OFS][OFS5]param1[/OFS][OFS7],[/OFS][OFS6]param2[/OFS][OFS7])[/OFS];
         [OFS11]return[/OFS];
      }

      private var _visualDebug:Boolean;

      public function getDetectTitle() : Boolean {
         return _tracker.getDetectTitle();
      }

      public function dispatchEvent(param1:Event) : Boolean {
         return _eventDispatcher.dispatchEvent(param1);
      }

      public function get config() : Configuration {
         return _config;
      }

      public function set mode(param1:String) : void {
         _mode=param1;
         return;
      }

      public function removeEventListener(param1:String, param2:Function, param3:Boolean=false) : void {
         _eventDispatcher.removeEventListener(param1,param2,param3);
         return;
      }

      public function setDetectFlash(param1:Boolean) : void {
         _tracker.setDetectFlash(param1);
         return;
      }

      public function resetSession() : void {
         _tracker.resetSession();
         return;
      }

      public function setCampNameKey(param1:String) : void {
         _tracker.setCampNameKey(param1);
         return;
      }

      private var _idleTimer:IdleTimer;

      public function get debug() : DebugConfiguration {
         return _debug;
      }

      private var _debug:DebugConfiguration;

      public function addItem(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:int) : void {
         _tracker.addItem(param1,param2,param3,param4,param5,param6);
         return;
      }

      private var _buffer:Buffer;

      private var _config:Configuration;

      private function _bridgeFactory() : GoogleAnalyticsAPI {
         debug.info("GATracker (Bridge) v"+version+"\naccount: "+account);
         return new Bridge(account,_debug,_jsproxy);
      }

      public function clearIgnoredOrganic() : void {
         _tracker.clearIgnoredOrganic();
         return;
      }

      public function set account(param1:String) : void {
         _account=param1;
         return;
      }

      public function setVar(param1:String) : void {
         _tracker.setVar(param1);
         return;
      }

      public function build() : void {
         if(!isReady())
         {
            _factory();
         }
         return;
      }

      public function addEventListener(param1:String, param2:Function, param3:Boolean=false, param4:int=0, param5:Boolean=false) : void {
         _eventDispatcher.addEventListener(param1,param2,param3,param4,param5);
         return;
      }

      public function setDomainName(param1:String) : void {
         _tracker.setDomainName(param1);
         return;
      }

      public function createEventTracker(param1:String) : EventTracker {
         return _tracker.createEventTracker(param1);
      }

      public function setCampSourceKey(param1:String) : void {
         _tracker.setCampSourceKey(param1);
         return;
      }

      private var _mode:String;

      private var _display:DisplayObject;

      public function set config(param1:Configuration) : void {
         _config=param1;
         return;
      }

      private var _jsproxy:JavascriptProxy;

      public function addTrans(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:String, param7:String, param8:String) : void {
         _tracker.addTrans(param1,param2,param3,param4,param5,param6,param7,param8);
         return;
      }

      public function setCampContentKey(param1:String) : void {
         _tracker.setCampContentKey(param1);
         return;
      }

      private var _dom:HTMLDOM;

      public function willTrigger(param1:String) : Boolean {
         return _eventDispatcher.willTrigger(param1);
      }

      public function setLocalServerMode() : void {
         _tracker.setLocalServerMode();
         return;
      }

      public function isReady() : Boolean {
         return _ready;
      }

      public function getLocalGifPath() : String {
         return _tracker.getLocalGifPath();
      }

      public function setAllowAnchor(param1:Boolean) : void {
         _tracker.setAllowAnchor(param1);
         return;
      }

      public function clearIgnoredRef() : void {
         _tracker.clearIgnoredRef();
         return;
      }

      private var _eventDispatcher:EventDispatcher;

      public function get mode() : String {
         return _mode;
      }

      private var _ready:Boolean = false;

      public function set debug(param1:DebugConfiguration) : void {
         _debug=param1;
         return;
      }

      public function setLocalGifPath(param1:String) : void {
         _tracker.setLocalGifPath(param1);
         return;
      }

      public function getVersion() : String {
         return _tracker.getVersion();
      }

      public function setSampleRate(param1:Number) : void {
         _tracker.setSampleRate(param1);
         return;
      }

      public function setCookiePath(param1:String) : void {
         _tracker.setCookiePath(param1);
         return;
      }

      public function setAllowHash(param1:Boolean) : void {
         _tracker.setAllowHash(param1);
         return;
      }

      public function addIgnoredOrganic(param1:String) : void {
         _tracker.addIgnoredOrganic(param1);
         return;
      }

      public function setLocalRemoteServerMode() : void {
         _tracker.setLocalRemoteServerMode();
         return;
      }

      public function cookiePathCopy(param1:String) : void {
         _tracker.cookiePathCopy(param1);
         return;
      }

      private var _gifRequest:GIFRequest;

      private function _factory() : void {
         var _loc1_:GoogleAnalyticsAPI = null;
         _jsproxy=new JavascriptProxy(debug);
         if(visualDebug)
         {
            debug.layout=new Layout(debug,_display);
            debug.active=visualDebug;
         }
         var _loc2_:TrackerCache = _tracker as TrackerCache;
         switch(mode)
         {
            case TrackerMode.BRIDGE:
               _loc1_=_bridgeFactory();
               if(!_loc2_.isEmpty())
               {
                  _loc2_.tracker=_loc1_;
                  _loc2_.flush();
               }
               _tracker=_loc1_;
               _ready=true;
               dispatchEvent(new AnalyticsEvent(AnalyticsEvent.READY,this));
               return;
            case TrackerMode.AS3:
               break;
         }
         _loc1_=_trackerFactory();
         if(!_loc2_.isEmpty())
         {
            _loc2_.tracker=_loc1_;
            _loc2_.flush();
         }
         _tracker=_loc1_;
         _ready=true;
         dispatchEvent(new AnalyticsEvent(AnalyticsEvent.READY,this));
         return;
      }

      public function setCampTermKey(param1:String) : void {
         _tracker.setCampTermKey(param1);
         return;
      }

      private function _trackerFactory() : GoogleAnalyticsAPI {
         debug.info("GATracker (AS3) v"+version+"\naccount: "+account);
         _adSense=new AdSenseGlobals(debug);
         _dom=new HTMLDOM(debug);
         _dom.cacheProperties();
         _env=new Environment("","","",debug,_dom);
         _buffer=new Buffer(config,debug,false);
         _gifRequest=new GIFRequest(config,debug,_buffer,_env);
         _idleTimer=new IdleTimer(config,debug,_display,_buffer);
         _ecom=new Ecommerce(_debug);
         _env.url=_display.stage.loaderInfo.url;
         return new Tracker(account,config,debug,_env,_buffer,_gifRequest,_adSense,_ecom);
      }

      public function setCampNOKey(param1:String) : void {
         _tracker.setCampNOKey(param1);
         return;
      }

      public function setDetectTitle(param1:Boolean) : void {
         _tracker.setDetectTitle(param1);
         return;
      }

      private var _ecom:Ecommerce;

      public function clearOrganic() : void {
         _tracker.clearOrganic();
         return;
      }

      public function setCampaignTrack(param1:Boolean) : void {
         _tracker.setCampaignTrack(param1);
         return;
      }

      public function addIgnoredRef(param1:String) : void {
         _tracker.addIgnoredRef(param1);
         return;
      }

      public function getServiceMode() : ServerOperationMode {
         return _tracker.getServiceMode();
      }

      public function set visualDebug(param1:Boolean) : void {
         _visualDebug=param1;
         return;
      }

      public function setCampMediumKey(param1:String) : void {
         _tracker.setCampMediumKey(param1);
         return;
      }

      private var _account:String;

      public function getDetectFlash() : Boolean {
         return _tracker.getDetectFlash();
      }

      public function get visualDebug() : Boolean {
         return _visualDebug;
      }

      public function hasEventListener(param1:String) : Boolean {
         return _eventDispatcher.hasEventListener(param1);
      }

      public function getAccount() : String {
         return _tracker.getAccount();
      }

      private var _tracker:GoogleAnalyticsAPI;

      public function setSessionTimeout(param1:int) : void {
         _tracker.setSessionTimeout(param1);
         return;
      }

      public function setRemoteServerMode() : void {
         _tracker.setRemoteServerMode();
         return;
      }
   }

}