package aaa
{
   import flash.display.DisplayObject;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import com.company.util.Coluf;
   import com.company.util.Zycu;


   public class RotmgParameters extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function RotmgParameters() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const hoci:String = "14.1";

      public static const vylyc:String = "0";

      public static const gavofi:Boolean = true;

      public static const dale:int = 2050;

      public static const regaj:Boolean = false;

      public static const dumejik:uint = 10944349;

      public static const vimytehy:uint = 16572160;

      public static var root:DisplayObject;

      public static const ricaze:Number = 0.003;

      public static const vimebyh:int = 20;

      public static const lugiboso:String = "";

      public static const wyfa:String = "*Client*";

      public static const kokapo:String = "*Error*";

      public static const quc:String = "*Help*";

      public static const nylajyhy:String = "*Guild*";

      public static const juf:int = 1000;

      public static const wurysobu:int = 1000;

      public static var data_:Object = null;

      public static var qasekiw:int = 1;

      public static var pofalogud:int = 0;

      public static var bonyge:Boolean = true;

      public static var womo:Boolean = false;

      public static var cipiso:Boolean = false;

      public static var jiqovezu:Boolean = true;

      public static const wajujy:int = -1;

      public static const myjedib:int = -2;

      public static const feli:int = -3;

      public static const rowika:int = -6;

      public static const lezedumy:Number = 18;

      public static const dyda:String = "https://www.kabam.com/corporate/terms-of-service";

      public static const dahyhuw:String = "https://www.kabam.com/corporate/privacy-policy";

      public static const RANDOM1:String = "311f80691451c71b09a13a2a6e";

      public static const RANDOM2:String = "72c5583cafb6818995cbd74b80";

      public static const rijewepe:String = "-----BEGIN PUBLIC KEY-----\n"+"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDEmgEmQcgLd0mvWqL6AKmhzj"+"JfZoAmZC0PUmG8K9CB1Ml68P00S3eU+TSL5aG8Mg3Tipvs02gC2veC10knRi7r"+"EsUwL8+h22EsjnpKZ/7K5YV9cefryTMnS0x4QGZbSkdPz/rLh0uGwk8Zu0cEKb"+"xQyvd3+pSmqZ5/ZQGaFjm9TQIDAQAB\n"+"-----END PUBLIC KEY-----";

      private static var hynyjory:SharedObject = null;

      public static function load() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         try
         {
            hynyjory=SharedObject.getLocal("AssembleeGameClientOptions","/");
            data_=hynyjory.data;
         }
         catch(error:Error)
         {
            if(_loc3_||(_loc1_))
            {
               data_=new Object();
            }
         }
         fidid();
         save();
         return;
      }

      public static function save() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         try
         {
            if(hynyjory!=null)
            {
               hynyjory.flush();
            }
         }
         catch(error:Error)
         {
         }
         return;
      }

      private static var veqeforup:Dictionary = new Dictionary();

      private static function qitas(param1:String, param2:uint) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!data_.hasOwnProperty(param1))
         {
            data_[param1]=param2;
         }
         veqeforup[param1]=true;
         return;
      }

      public static function setKey(param1:String, param2:uint) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = null;
         for (_loc3_ in veqeforup)
         {
            if(data_[_loc3_]==param2)
            {
               data_[_loc3_]=Coluf.cup;
            }
         }
         data_[param1]=param2;
         return;
      }

      private static function quq(param1:String, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!data_.hasOwnProperty(param1))
         {
            data_[param1]=param2;
         }
         return;
      }

      public static function fidid() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         qitas("moveLeft",Coluf.A);
         qitas("moveRight",Coluf.D);
         qitas("moveUp",Coluf.W);
         qitas("moveDown",Coluf.S);
         qitas("rotateLeft",Coluf.Q);
         qitas("rotateRight",Coluf.E);
         qitas("useSpecial",Coluf.SPACE);
         qitas("interact",Coluf.NUMBER_0);
         qitas("useInvSlot1",Coluf.NUMBER_1);
         qitas("useInvSlot2",Coluf.NUMBER_2);
         qitas("useInvSlot3",Coluf.NUMBER_3);
         qitas("useInvSlot4",Coluf.NUMBER_4);
         qitas("useInvSlot5",Coluf.NUMBER_5);
         qitas("useInvSlot6",Coluf.NUMBER_6);
         qitas("useInvSlot7",Coluf.NUMBER_7);
         qitas("useInvSlot8",Coluf.NUMBER_8);
         qitas("escapeToNexus",Coluf.hymyvoc);
         qitas("escapeToNexus2",Coluf.F5);
         qitas("autofireToggle",Coluf.I);
         qitas("scrollChatUp",Coluf.pisopymow);
         qitas("scrollChatDown",Coluf.kilatyd);
         qitas("miniMapZoomOut",Coluf.fotodygo);
         qitas("miniMapZoomIn",Coluf.fycy);
         qitas("resetToDefaultCameraAngle",Coluf.R);
         qitas("togglePerformanceStats",Coluf.cup);
         qitas("options",Coluf.O);
         qitas("toggleCentering",Coluf.cup);
         qitas("chat",Coluf.ENTER);
         qitas("chatCommand",Coluf.zuvutofuh);
         qitas("tell",Coluf.TAB);
         qitas("guildChat",Coluf.G);
         qitas("testOne",Coluf.J);
         qitas("testTwo",Coluf.K);
         qitas("toggleFullscreen",Coluf.cup);
         qitas("useHealthPotion",Coluf.F);
         qitas("useMagicPotion",Coluf.V);
         qitas("switchTabs",Coluf.B);
         quq("playerObjectType",782);
         quq("playMusic",true);
         quq("playSFX",true);
         quq("playPewPew",true);
         quq("centerOnPlayer",true);
         quq("preferredServer",null);
         quq("needsTutorial",true);
         quq("needsRandomRealm",true);
         quq("cameraAngle",7*Math.PI/4);
         quq("defaultCameraAngle",7*Math.PI/4);
         quq("showQuestPortraits",true);
         quq("fullscreenMode",false);
         quq("showProtips",true);
         quq("protipIndex",0);
         quq("joinDate",Zycu.gij());
         quq("lastDailyAnalytics",null);
         quq("allowRotation",false);
         quq("charIdUseMap",{});
         quq("drawShadows",true);
         quq("textBubbles",true);
         quq("showTradePopup",true);
         quq("paymentMethod",null);
         quq("filterLanguage",true);
         quq("showGuildInvitePopup",true);
         quq("showBeginnersOffer",false);
         quq("beginnersOfferTimeLeft",0);
         quq("beginnersOfferShowNow",false);
         quq("beginnersOfferShowNowTime",0);
         quq("watchForTutorialExit",false);
         quq("contextualClick",true);
         quq("clickForGold",false);
         quq("contextualPotionBuy",true);
         quq("inventorySwap",true);
         quq("forceChatQuality",false);
         quq("hidePlayerChat",false);
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

}