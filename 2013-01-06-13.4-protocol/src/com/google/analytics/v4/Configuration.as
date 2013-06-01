package com.google.analytics.v4
{
[CLASS1564]   import com.google.analytics.core.Organic;
   import com.google.analytics.core.ServerOperationMode;
   import com.google.analytics.campaign.CampaignKey;
   import com.google.analytics.core.Domain;
   import com.google.analytics.debug.DebugConfiguration;
   import com.google.analytics.utils.Timespan;
   import com.google.analytics.core.DomainNameMode;


   public class Configuration extends Object
   {
      public function Configuration(param1:DebugConfiguration=null) {
         _organic=new Organic();
         conversionTimeout=Timespan.sixmonths;
         sessionTimeout=Timespan.thirtyminutes;
         campaignKey=new CampaignKey();
         serverMode=ServerOperationMode.remote;
         super();
         _debug=param1;
         _domain=new Domain(DomainNameMode.auto,"",_debug);
         serverMode=ServerOperationMode.remote;
         _initOrganicSources();
         return;
      }

      public function get organic() : Organic {
         return _organic;
      }

      public var serverMode:ServerOperationMode;

      public var detectFlash:Boolean = true;

      public var hasSiteOverlay:Boolean = false;

      public var allowLocalTracking:Boolean = true;

      public var secureRemoteGIFpath:String = "https://ssl.google-analytics.com/__utm.gif";

      public function get cookieName() : String {
         return _cookieName;
      }

      private var _version:String = "4.3as";

      public var allowDomainHash:Boolean = true;

      public var detectClientInfo:Boolean = true;

      public function get trackingLimitPerSession() : int {
         return _trackingLimitPerSession;
      }

      public var idleLoop:Number = 30;

      private function _initOrganicSources() : void {
         addOrganicSource(google,googleSearchParam);
         addOrganicSource("yahoo","p");
         addOrganicSource("msn","q");
         addOrganicSource("aol","query");
         addOrganicSource("aol","encquery");
         addOrganicSource("lycos","query");
         addOrganicSource("ask","q");
         addOrganicSource("altavista","q");
         addOrganicSource("netscape","query");
         addOrganicSource("cnn","query");
         addOrganicSource("looksmart","qt");
         addOrganicSource("about","terms");
         addOrganicSource("mamma","query");
         addOrganicSource("alltheweb","q");
         addOrganicSource("gigablast","q");
         addOrganicSource("voila","rdata");
         addOrganicSource("virgilio","qs");
         addOrganicSource("live","q");
         addOrganicSource("baidu","wd");
         addOrganicSource("alice","qs");
         addOrganicSource("yandex","text");
         addOrganicSource("najdi","q");
         addOrganicSource("aol","q");
         addOrganicSource("club-internet","q");
         addOrganicSource("mama","query");
         addOrganicSource("seznam","q");
         addOrganicSource("search","q");
         addOrganicSource("wp","szukaj");
         addOrganicSource("onet","qt");
         addOrganicSource("netsprint","q");
         addOrganicSource("google.interia","q");
         addOrganicSource("szukacz","q");
         addOrganicSource("yam","k");
         addOrganicSource("pchome","q");
         addOrganicSource("kvasir","searchExpr");
         addOrganicSource("sesam","q");
         addOrganicSource("ozu","q");
         addOrganicSource("terra","query");
         addOrganicSource("nostrum","query");
         addOrganicSource("mynet","q");
         addOrganicSource("ekolay","q");
         addOrganicSource("search.ilse","search_for");
         return;
      }

      public var isTrackOutboundSubdomains:Boolean = false;

      public var cookiePath:String = "/";

      public function get sampleRate() : Number {
         return _sampleRate;
      }

      public var transactionFieldDelim:String = "|";

      private var _organic:Organic;

      private var _cookieName:String = "analytics";

      public var campaignKey:CampaignKey;

      public var google:String = "google";

      public var googleCsePath:String = "cse";

      public var bucketCapacity:Number = 10;

      public function addOrganicSource(param1:String, param2:String) : void {
         var engine:String = param1;
         var keyword:String = param2;
         try
         {
            _organic.addSource(engine,keyword);
         }
         catch(e:Error)
         {
            if((_debug)&&(_debug.active))
            {
               _debug.warning(e.message);
            }
         }
         return;
      }

      private var _sampleRate:Number = 1;

      public var remoteGIFpath:String = "http://www.google-analytics.com/__utm.gif";

      public function get domain() : Domain {
         return _domain;
      }

      public var googleSearchParam:String = "q";

      public var allowLinker:Boolean = false;

      public var maxOutboundLinkExamined:Number = 1000;

      private var _debug:DebugConfiguration;

      public function set sampleRate(param1:Number) : void {
         if(param1<=0)
         {
            param1=0.1;
         }
         if(param1>1)
         {
            param1=1;
         }
         var param1:Number = Number(param1.toFixed(2));
         _sampleRate=param1;
         return;
      }

      public var allowAnchor:Boolean = false;

      public function get version() : String {
         return _version;
      }

      private var _domain:Domain;

      private var _trackingLimitPerSession:int = 500;

      public var tokenCliff:int = 10;

      public var sessionTimeout:Number;

      public var idleTimeout:Number = 60;

      public var campaignTracking:Boolean = true;

      public var domainName:String = "";

      public var detectTitle:Boolean = true;

      public var tokenRate:Number = 0.2;

      public var conversionTimeout:Number;

      public var localGIFpath:String = "/__utm.gif";
   }
[/CLASS]
}