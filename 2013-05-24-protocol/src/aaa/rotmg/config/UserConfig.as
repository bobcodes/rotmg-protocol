package aaa.rotmg.config
{
   import flash.display.DisplayObject;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import com.company.util.Kiv;
   import com.company.util.Hadi;


   public class UserConfig extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function UserConfig() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const BUILD_VERSION:String = "13.3";

      public static const cyg:String = "0";

      public static const cit:Boolean = true;

      public static const hyr:int = 2050;

      public static const fyj:Boolean = false;

      public static const sujasezuw:uint = 10944349;

      public static const vaquzu:uint = 16572160;

      public static var root:DisplayObject;

      public static const tequj:Number = 0.003;

      public static const dilecamad:int = 20;

      public static const syjara:String = "";

      public static const pynezad:String = "*Client*";

      public static const gez:String = "*Error*";

      public static const giqik:String = "*Help*";

      public static const hepefur:String = "*Guild*";

      public static const joky:int = 1000;

      public static const zawojutu:int = 1000;

      public static var data_:Object = null;

      public static var hebirusi:int = 1;

      public static var gami:int = 0;

      public static var pifaruzyr:Boolean = true;

      public static var gyry:Boolean = false;

      public static var wume:Boolean = false;

      public static var niqeqoly:Boolean = true;

      public static const kesopepi:int = -1;

      public static const bipunomor:int = -2;

      public static const buryruny:int = -3;

      public static const dugol:int = -6;

      public static const jowicizos:Number = 18;

      public static const dav:String = "https://www.kabam.com/corporate/terms-of-service";

      public static const behibimik:String = "https://www.kabam.com/corporate/privacy-policy";

      public static const OutGoingSecretKey:String = "311f80691451c71b09a13a2a6e";

      public static const InComingSecretKey:String = "72c5583cafb6818995cbd74b80";

      public static const rotmgPEM:String = "-----BEGIN PUBLIC KEY-----\n"+"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDEmgEmQcgLd0mvWqL6AKmhzj"+"JfZoAmZC0PUmG8K9CB1Ml68P00S3eU+TSL5aG8Mg3Tipvs02gC2veC10knRi7r"+"EsUwL8+h22EsjnpKZ/7K5YV9cefryTMnS0x4QGZbSkdPz/rLh0uGwk8Zu0cEKb"+"xQyvd3+pSmqZ5/ZQGaFjm9TQIDAQAB\n"+"-----END PUBLIC KEY-----";

      private static var nifahymyk:SharedObject = null;

      public static function load() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         try
         {
            nifahymyk=SharedObject.getLocal("AssembleeGameClientOptions","/");
            data_=nifahymyk.data;
         }
         catch(error:Error)
         {
            if(_loc4_||(UserConfig))
            {
               data_=new Object();
            }
         }
         cewi();
         save();
         return;
      }

      public static function save() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         try
         {
            if(nifahymyk!=null)
            {
               nifahymyk.flush();
            }
         }
         catch(error:Error)
         {
         }
         return;
      }

      private static var padyce:Dictionary = new Dictionary();

      private static function lecuzyr(param1:String, param2:uint) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!data_.hasOwnProperty(param1))
         {
            data_[param1]=param2;
         }
         padyce[param1]=true;
         return;
      }

      public static function setKey(param1:String, param2:uint) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = null;
         for (_loc3_ in padyce)
         {
            if(data_[_loc3_]==param2)
            {
               data_[_loc3_]=Kiv.mari;
            }
         }
         data_[param1]=param2;
         return;
      }

      private static function nilykidu(param1:String, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!data_.hasOwnProperty(param1))
         {
            data_[param1]=param2;
         }
         return;
      }

      public static function cewi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         lecuzyr("moveLeft",Kiv.A);
         lecuzyr("moveRight",Kiv.D);
         lecuzyr("moveUp",Kiv.W);
         lecuzyr("moveDown",Kiv.S);
         lecuzyr("rotateLeft",Kiv.Q);
         lecuzyr("rotateRight",Kiv.E);
         lecuzyr("useSpecial",Kiv.SPACE);
         lecuzyr("interact",Kiv.NUMBER_0);
         lecuzyr("useInvSlot1",Kiv.NUMBER_1);
         lecuzyr("useInvSlot2",Kiv.NUMBER_2);
         lecuzyr("useInvSlot3",Kiv.NUMBER_3);
         lecuzyr("useInvSlot4",Kiv.NUMBER_4);
         lecuzyr("useInvSlot5",Kiv.NUMBER_5);
         lecuzyr("useInvSlot6",Kiv.NUMBER_6);
         lecuzyr("useInvSlot7",Kiv.NUMBER_7);
         lecuzyr("useInvSlot8",Kiv.NUMBER_8);
         lecuzyr("escapeToNexus",Kiv.myvup);
         lecuzyr("escapeToNexus2",Kiv.F5);
         lecuzyr("autofireToggle",Kiv.I);
         lecuzyr("scrollChatUp",Kiv.lofafugoq);
         lecuzyr("scrollChatDown",Kiv.nyja);
         lecuzyr("miniMapZoomOut",Kiv.pusawun);
         lecuzyr("miniMapZoomIn",Kiv.hymek);
         lecuzyr("resetToDefaultCameraAngle",Kiv.R);
         lecuzyr("togglePerformanceStats",Kiv.mari);
         lecuzyr("options",Kiv.O);
         lecuzyr("toggleCentering",Kiv.mari);
         lecuzyr("chat",Kiv.ENTER);
         lecuzyr("chatCommand",Kiv.gyjapa);
         lecuzyr("tell",Kiv.TAB);
         lecuzyr("guildChat",Kiv.G);
         lecuzyr("testOne",Kiv.J);
         lecuzyr("testTwo",Kiv.K);
         lecuzyr("toggleFullscreen",Kiv.mari);
         lecuzyr("useHealthPotion",Kiv.F);
         lecuzyr("useMagicPotion",Kiv.V);
         lecuzyr("toggleHUDTabStrip",Kiv.B);
         nilykidu("playerObjectType",782);
         nilykidu("playMusic",true);
         nilykidu("playSFX",true);
         nilykidu("playPewPew",true);
         nilykidu("centerOnPlayer",true);
         nilykidu("preferredServer",null);
         nilykidu("needsTutorial",true);
         nilykidu("needsRandomRealm",true);
         nilykidu("cameraAngle",7*Math.PI/4);
         nilykidu("defaultCameraAngle",7*Math.PI/4);
         nilykidu("showQuestPortraits",true);
         nilykidu("fullscreenMode",false);
         nilykidu("showProtips",true);
         nilykidu("protipIndex",0);
         nilykidu("joinDate",Hadi.zac());
         nilykidu("lastDailyAnalytics",null);
         nilykidu("allowRotation",false);
         nilykidu("charIdUseMap",{});
         nilykidu("drawShadows",true);
         nilykidu("textBubbles",true);
         nilykidu("showTradePopup",true);
         nilykidu("paymentMethod",null);
         nilykidu("filterLanguage",true);
         nilykidu("showGuildInvitePopup",true);
         nilykidu("showBeginnersOffer",false);
         nilykidu("beginnersOfferTimeLeft",0);
         nilykidu("beginnersOfferShowNow",false);
         nilykidu("beginnersOfferShowNowTime",0);
         nilykidu("watchForTutorialExit",false);
         nilykidu("contextualClick",true);
         nilykidu("clickForGold",false);
         nilykidu("contextualPotionBuy",true);
         nilykidu("inventorySwap",true);
         nilykidu("forceChatQuality",false);
         nilykidu("hidePlayerChat",false);
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