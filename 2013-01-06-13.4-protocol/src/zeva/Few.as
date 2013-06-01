package zeva
{
[CLASS654]   import leselo.Account;
   import gamusahan.Lahocuji;
   import flash.external.ExternalInterface;


   public class Few extends Object implements Account
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Few() {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:String = null;
         super();
         try
         {
            _loc1_=ExternalInterface.call("rotmg.UrlLib.getParam","entrypt");
            if(_loc1_!=null)
            {
               this.jeraqemuz=_loc1_;
            }
         }
         catch(error:Error)
         {
         }
         return;
      }

      public static const kiza:String = "kabam.com";

      private static const qazyfodo:String = "kabam.com";

      private var jeraqemuz:String;

      private var userId:String = "";

      private var password:String = null;

      private var hipy:Boolean;

      private var lygogac:String;

      public var signedRequest:String;

      public var userSession:Object;

      public var pogitapy:Lahocuji;

      public function fuv(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.userId=param1;
         this.password=param2;
         return;
      }

      public function pyfiqa() : String {
         return "/credits";
      }

      public function dera() : Object {
         return 
            {
               guid:this.getUserId(),
               secret:this.bihowik(),
               signedRequest:this.signedRequest
            }
         ;
      }

      public function wiqen() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.jeraqemuz)||"";
      }

      public function fyp() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.userSession==null||this.userSession["kabam_naid"]==null)
         {
            return "";
         }
         return this.userSession["kabam_naid"];
      }

      public function myqem() : String {
         return kiza;
      }

      public function paweral() : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
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

      public function nypyq() : Boolean {
         return false;
      }

      public function tuq() : Boolean {
         return true;
      }

      public function rom() : String {
         return qazyfodo;
      }

      public function bihowik() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.password)||"";
      }

      public function nume() : String {
         return "";
      }

      public function clear() : void {
         return;
      }

      public function rihesujuc(param1:String, param2:int) : void {
         return;
      }

      public function verify(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hipy=param1;
         return;
      }

      public function kekupenuj() : Boolean {
         return this.hipy;
      }

      public function pikyfu() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.lygogac)||"";
      }

      public function kowumaj(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lygogac=param1;
         return;
      }

      public function mucana() : String {
         return this.userSession["oauth_token"];
      }

      public function jypy() : String {
         return this.fyp();
      }
   }
[/CLASS]
}