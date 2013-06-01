package aaa.rotmg.account
{
   import aaa.rotmg.account.Account;
   import com.company.assembleegameclient.util.GUID;
   import flash.net.SharedObject;
   import aaa.rotmg.config.UserConfig;
   import flash.external.ExternalInterface;


   public class RotmgAccount extends Object implements Account
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function RotmgAccount() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         try
         {
            this.homofu=ExternalInterface.call("rotmg.UrlLib.getParam","entrypt");
         }
         catch(error:Error)
         {
         }
         return;
      }

      public static const GAME_NET:String = "rotmg";

      private static const nobifac:String = "";

      private static const PLAY_PLATFORM:String = "rotmg";

      private var userId:String = "";

      private var password:String;

      private var homofu:String = "";

      private var lohigelama:Boolean;

      private var kofimupo:String;

      public var signedRequest:String;

      public var disemugy:String;

      public function nenyzeqe() : String {
         return this.userId;
      }

      public function getUserId() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.userId=(this.userId)||(GUID.create());
      }

      public function password() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.password)||"";
      }

      public function venupog() : Object {
         return 
            {
               guid:this.getUserId(),
               password:this.password()
            }
         ;
      }

      public function bugi() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.password()=="");
      }

      public function tesaw(param1:String, param2:String) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:SharedObject = null;
         this.userId=param1;
         this.password=param2;
         try
         {
            _loc3_=SharedObject.getLocal("RotMG","/");
            _loc3_.data["GUID"]=param1;
            _loc3_.data["Password"]=param2;
            _loc3_.flush();
         }
         catch(error:Error)
         {
         }
         return;
      }

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tesaw(GUID.create(),null);
         UserConfig.niqeqoly=true;
         UserConfig.data_.charIdUseMap={};
         UserConfig.save();
         return;
      }

      public function lusysises(param1:String, param2:int) : void {
         return;
      }

      public function nuce() : String {
         return "/credits";
      }

      public function zyz() : String {
         return nobifac;
      }

      public function getGameNet() : String {
         return GAME_NET;
      }

      public function getPlayPlatform() : String {
         return PLAY_PLATFORM;
      }

      public function getRotmgUrlLibParamEntryPoint() : String {
         return (this.homofu)||"";
      }

      public function platformDependantSecret() : String {
         return "";
      }

      public function verify(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lohigelama=param1;
         return;
      }

      public function tyso() : Boolean {
         return this.lohigelama;
      }

      public function rowyr() : String {
         return (this.kofimupo)||"";
      }

      public function rovehuhuv(param1:String) : void {
         this.kofimupo=param1;
         return;
      }

      public function lyze() : String {
         return this.signedRequest;
      }

      public function rozabuweq() : String {
         return this.disemugy;
      }
   }

}