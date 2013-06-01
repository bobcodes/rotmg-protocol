package com.company.assembleegameclient.parameters
{
[CLASS46]   import flash.display.DisplayObject;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import com.company.util.Sojef;
   import com.company.util.Runahivuw;


   public class Parameters extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Parameters() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const jodaga:String = "13.4";

      public static const nyr:String = "0";

      public static const qaburi:Boolean = true;

      public static const hihylebov:int = 2050;

      public static const jyw:Boolean = false;

      public static const nagy:uint = 10944349;

      public static const rozodov:uint = 16572160;

      public static var root:DisplayObject;

      public static const viqamac:Number = 0.003;

      public static const kocacuz:int = 20;

      public static const lujujy:String = "";

      public static const pyha:String = "*Client*";

      public static const timepimow:String = "*Error*";

      public static const pilyniges:String = "*Help*";

      public static const giwekaser:String = "*Guild*";

      public static const pazyb:int = 1000;

      public static const melade:int = 1000;

      public static var data_:Object = null;

      public static var nagop:int = 1;

      public static var toqodyfyv:int = 0;

      public static var nynipen:Boolean = true;

      public static var pevabak:Boolean = false;

      public static var jelu:Boolean = false;

      public static var jugywebi:Boolean = true;

      public static const telore:int = -1;

      public static const jec:int = -2;

      public static const foloq:int = -3;

      public static const jasad:int = -6;

      public static const casu:Number = 18;

      public static const wuz:String = "https://www.kabam.com/corporate/terms-of-service";

      public static const gegu:String = "https://www.kabam.com/corporate/privacy-policy";

      public static const RANDOM1:String = "311f80691451c71b09a13a2a6e";

      public static const RANDOM2:String = "72c5583cafb6818995cbd74b80";

      public static const mer:String = "-----BEGIN PUBLIC KEY-----\n"+"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDEmgEmQcgLd0mvWqL6AKmhzj"+"JfZoAmZC0PUmG8K9CB1Ml68P00S3eU+TSL5aG8Mg3Tipvs02gC2veC10knRi7r"+"EsUwL8+h22EsjnpKZ/7K5YV9cefryTMnS0x4QGZbSkdPz/rLh0uGwk8Zu0cEKb"+"xQyvd3+pSmqZ5/ZQGaFjm9TQIDAQAB\n"+"-----END PUBLIC KEY-----";

      private static var vuz:SharedObject = null;

      public static function load() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         try
         {
            vuz=SharedObject.getLocal("AssembleeGameClientOptions","/");
            data_=vuz.data;
         }
         catch(error:Error)
         {
            if(!_loc3_)
            {
               data_=new Object();
            }
         }
         letewizi();
         save();
         return;
      }

      public static function save() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         try
         {
            if(vuz!=null)
            {
               vuz.flush();
            }
         }
         catch(error:Error)
         {
         }
         return;
      }

      private static var nikusisih:Dictionary = new Dictionary();

      private static function kewykah(param1:String, param2:uint) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!data_.hasOwnProperty(param1))
         {
            data_[param1]=param2;
         }
         nikusisih[param1]=true;
         return;
      }

      public static function setKey(param1:String, param2:uint) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = null;
         for (_loc3_ in nikusisih)
         {
            if(data_[_loc3_]==param2)
            {
               data_[_loc3_]=Sojef.tyqucof;
            }
         }
         data_[param1]=param2;
         return;
      }

      private static function vagut(param1:String, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!data_.hasOwnProperty(param1))
         {
            data_[param1]=param2;
         }
         return;
      }

      public static function letewizi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         kewykah("moveLeft",Sojef.A);
         kewykah("moveRight",Sojef.D);
         kewykah("moveUp",Sojef.W);
         kewykah("moveDown",Sojef.S);
         kewykah("rotateLeft",Sojef.Q);
         kewykah("rotateRight",Sojef.E);
         kewykah("useSpecial",Sojef.SPACE);
         kewykah("interact",Sojef.NUMBER_0);
         kewykah("useInvSlot1",Sojef.NUMBER_1);
         kewykah("useInvSlot2",Sojef.NUMBER_2);
         kewykah("useInvSlot3",Sojef.NUMBER_3);
         kewykah("useInvSlot4",Sojef.NUMBER_4);
         kewykah("useInvSlot5",Sojef.NUMBER_5);
         kewykah("useInvSlot6",Sojef.NUMBER_6);
         kewykah("useInvSlot7",Sojef.NUMBER_7);
         kewykah("useInvSlot8",Sojef.NUMBER_8);
         kewykah("escapeToNexus",Sojef.zejed);
         kewykah("escapeToNexus2",Sojef.F5);
         kewykah("autofireToggle",Sojef.I);
         kewykah("scrollChatUp",Sojef.satosaben);
         kewykah("scrollChatDown",Sojef.hagyjicu);
         kewykah("miniMapZoomOut",Sojef.tugivobi);
         kewykah("miniMapZoomIn",Sojef.vybazeqom);
         kewykah("resetToDefaultCameraAngle",Sojef.R);
         kewykah("togglePerformanceStats",Sojef.tyqucof);
         kewykah("options",Sojef.O);
         kewykah("toggleCentering",Sojef.tyqucof);
         kewykah("chat",Sojef.ENTER);
         kewykah("chatCommand",Sojef.kyju);
         kewykah("tell",Sojef.TAB);
         kewykah("guildChat",Sojef.G);
         kewykah("testOne",Sojef.J);
         kewykah("testTwo",Sojef.K);
         kewykah("toggleFullscreen",Sojef.tyqucof);
         kewykah("useHealthPotion",Sojef.F);
         kewykah("useMagicPotion",Sojef.V);
         kewykah("toggleHUDTabStrip",Sojef.B);
         vagut("playerObjectType",782);
         vagut("playMusic",true);
         vagut("playSFX",true);
         vagut("playPewPew",true);
         vagut("centerOnPlayer",true);
         vagut("preferredServer",null);
         vagut("needsTutorial",true);
         vagut("needsRandomRealm",true);
         vagut("cameraAngle",7*Math.PI/4);
         vagut("defaultCameraAngle",7*Math.PI/4);
         vagut("showQuestPortraits",true);
         vagut("fullscreenMode",false);
         vagut("showProtips",true);
         vagut("protipIndex",0);
         vagut("joinDate",Runahivuw.zilip());
         vagut("lastDailyAnalytics",null);
         vagut("allowRotation",false);
         vagut("charIdUseMap",{});
         vagut("drawShadows",true);
         vagut("textBubbles",true);
         vagut("showTradePopup",true);
         vagut("paymentMethod",null);
         vagut("filterLanguage",true);
         vagut("showGuildInvitePopup",true);
         vagut("showBeginnersOffer",false);
         vagut("beginnersOfferTimeLeft",0);
         vagut("beginnersOfferShowNow",false);
         vagut("beginnersOfferShowNowTime",0);
         vagut("watchForTutorialExit",false);
         vagut("contextualClick",true);
         vagut("clickForGold",false);
         vagut("contextualPotionBuy",true);
         vagut("inventorySwap",true);
         vagut("forceChatQuality",false);
         vagut("hidePlayerChat",false);
         if(!data_.hasOwnProperty("needsSurvey"))
         {
            data_.needsSurvey=data_.needsTutorial;
            switch(int(Math.random()*5))
            {
               case 0:
                  data_.surveyDate=0;
                  data_.playTimeLeftTillSurvey=5*60;
                  data_.surveyGroup="5MinPlaytime";
                  break;
               case 1:
                  data_.surveyDate=0;
                  data_.playTimeLeftTillSurvey=10*60;
                  data_.surveyGroup="10MinPlaytime";
                  break;
               case 2:
                  data_.surveyDate=0;
                  data_.playTimeLeftTillSurvey=30*60;
                  data_.surveyGroup="30MinPlaytime";
                  break;
               case 3:
                  data_.surveyDate=new Date().time+1000*60*60*24*7;
                  data_.playTimeLeftTillSurvey=2*60;
                  data_.surveyGroup="1WeekRealtime";
                  break;
               case 4:
                  data_.surveyDate=new Date().time+1000*60*60*24*14;
                  data_.playTimeLeftTillSurvey=2*60;
                  data_.surveyGroup="2WeekRealtime";
                  break;
            }
         }
         return;
      }
   }
[/CLASS]
}