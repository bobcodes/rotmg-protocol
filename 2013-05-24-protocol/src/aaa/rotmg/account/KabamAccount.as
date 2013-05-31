package aaa.rotmg.account
{
   import aaa.rotmg.account.Account;
   import kyt.Zurucuvy;
   import flash.external.ExternalInterface;


   public class KabamAccount extends Object implements Account
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function KabamAccount() {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = null;
         super();
         try
         {
            _loc1_=ExternalInterface.call("rotmg.UrlLib.getParam","entrypt");
            if(_loc1_!=null)
            {
               this.homofu=_loc1_;
            }
         }
         catch(error:Error)
         {
         }
         return;
      }

      public static const ACCOUNT_TYPE:String = "kabam.com";

      private static const fyz:String = "kabam.com";

      private var homofu:String;

      private var userId:String = "";

      private var password:String = null;

      private var lohigelama:Boolean;

      private var kofimupo:String;

      public var signedRequest:String;

      public var userSession:Object;

      public var sug:Zurucuvy;

      public function tesaw(param1:String, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.userId=param1;
         this.password=param2;
         return;
      }

      public function nuce() : String {
         return "/credits";
      }

      public function venupog() : Object {
         return 
            {
               guid:this.getUserId(),
               secret:this.platformDependantSecret(),
               signedRequest:this.signedRequest
            }
         ;
      }

      public function getRotmgUrlLibParamEntryPoint() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.homofu)||"";
      }

      public function zyz() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.userSession==null||this.userSession["kabam_naid"]==null)
         {
            return "";
         }
         return this.userSession["kabam_naid"];
      }

      public function getGameNet() : String {
         return ACCOUNT_TYPE;
      }

      public function nenyzeqe() : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.userSession==null||this.userSession["user"]==null||this.userSession["user"]["email"]==null)
         {
            return "";
         }
         var _loc1_:String = this.userSession["user"]["email"];
         var _loc2_:Array = _loc1_.split("@",2);
         if(_loc2_.length!=2)
         {
            return "";
         }
         return _loc2_[0];
      }

      public function getUserId() : String {
         return this.userId;
      }

      public function toqonary() : Boolean {
         return false;
      }

      public function bugi() : Boolean {
         return true;
      }

      public function getPlayPlatform() : String {
         return fyz;
      }

      public function platformDependantSecret() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.password)||"";
      }

      public function password() : String {
         return "";
      }

      public function clear() : void {
         return;
      }

      public function lusysises(param1:String, param2:int) : void {
         return;
      }

      public function verify(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lohigelama=param1;
         return;
      }

      public function tyso() : Boolean {
         return this.lohigelama;
      }

      public function rowyr() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.kofimupo)||"";
      }

      public function rovehuhuv(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kofimupo=param1;
         return;
      }

      public function lyze() : String {
         return this.userSession["oauth_token"];
      }

      public function rozabuweq() : String {
         return this.zyz();
      }
   }

}