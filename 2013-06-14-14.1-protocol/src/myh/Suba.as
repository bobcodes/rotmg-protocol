package myh
{
   import pugem.Account;
   import guje.Kehyg;
   import flash.external.ExternalInterface;


   public class Suba extends Object implements Account
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Suba() {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:String = null;
         super();
         try
         {
            _loc1_=ExternalInterface.call("rotmg.UrlLib.getParam","entrypt");
            if(_loc1_!=null)
            {
               this.qiqiwo=_loc1_;
            }
         }
         catch(error:Error)
         {
         }
         return;
      }

      public static const rihigenah:String = "kabam.com";

      private static const siba:String = "kabam.com";

      private var qiqiwo:String;

      private var userId:String = "";

      private var password:String = null;

      private var qyzewohy:Boolean;

      private var nalohu:String;

      public var signedRequest:String;

      public var userSession:Object;

      public var tepiseha:Kehyg;

      public function sapihaj(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.userId=param1;
         this.password=param2;
         return;
      }

      public function vyj() : String {
         return "/credits";
      }

      public function pedavitu() : Object {
         return 
            {
               guid:this.getUserId(),
               secret:this.covisade(),
               signedRequest:this.signedRequest
            }
         ;
      }

      public function dyw() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.qiqiwo)||"";
      }

      public function tamy() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.userSession==null||this.userSession["kabam_naid"]==null)
         {
            return "";
         }
         return this.userSession["kabam_naid"];
      }

      public function cug() : String {
         return rihigenah;
      }

      public function dodet() : String {
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

      public function mywuruv() : Boolean {
         return false;
      }

      public function zuqic() : Boolean {
         return true;
      }

      public function rarofu() : String {
         return siba;
      }

      public function covisade() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.password)||"";
      }

      public function pysecik() : String {
         return "";
      }

      public function clear() : void {
         return;
      }

      public function cipyrapyq(param1:String, param2:int) : void {
         return;
      }

      public function verify(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qyzewohy=param1;
         return;
      }

      public function mupycoper() : Boolean {
         return this.qyzewohy;
      }

      public function hadyqevu() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.nalohu)||"";
      }

      public function piwobaqej(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nalohu=param1;
         return;
      }

      public function pedul() : String {
         return this.userSession["oauth_token"];
      }

      public function bujadal() : String {
         return this.tamy();
      }
   }

}