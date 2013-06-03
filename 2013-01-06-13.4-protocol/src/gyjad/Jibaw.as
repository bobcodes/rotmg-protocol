package gyjad
{
    import leselo.Account;
   import com.company.assembleegameclient.util.GUID;
   import flash.net.SharedObject;
   import aaa.Parameters;
   import flash.external.ExternalInterface;


   public class RotmgAccount extends Object implements Account
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function RotmgAccount() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         try
         {
            this.jeraqemuz=ExternalInterface.call("rotmg.UrlLib.getParam","entrypt");
         }
         catch(error:Error)
         {
         }
         return;
      }

      public static const kiza:String = "rotmg";

      private static const zuhizij:String = "";

      private static const feh:String = "rotmg";

      private var userId:String = "";

      private var password:String;

      private var jeraqemuz:String = "";

      private var hipy:Boolean;

      private var lygogac:String;

      public var signedRequest:String;

      public var tycehozu:String;

      public function paweral() : String {
         return this.userId;
      }

      public function getUserId() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.userId=(this.userId)||(GUID.create());
      }

      public function nume() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.password)||"";
      }

      public function dera() : Object {
         return 
            {
               guid:this.getUserId(),
               password:this.nume()
            }
         ;
      }

      public function tuq() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.nume()=="");
      }

      public function fuv(param1:String, param2:String) : void {
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
         this.fuv(GUID.create(),null);
         Parameters.jugywebi=true;
         Parameters.data_.charIdUseMap={};
         Parameters.save();
         return;
      }

      public function rihesujuc(param1:String, param2:int) : void {
         return;
      }

      public function pyfiqa() : String {
         return "/credits";
      }

      public function fyp() : String {
         return zuhizij;
      }

      public function myqem() : String {
         return kiza;
      }

      public function rom() : String {
         return feh;
      }

      public function wiqen() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.jeraqemuz)||"";
      }

      public function bihowik() : String {
         return "";
      }

      public function verify(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hipy=param1;
         return;
      }

      public function kekupenuj() : Boolean {
         return this.hipy;
      }

      public function pikyfu() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.lygogac)||"";
      }

      public function kowumaj(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lygogac=param1;
         return;
      }

      public function mucana() : String {
         return this.signedRequest;
      }

      public function jypy() : String {
         return this.tycehozu;
      }
   }
[/CLASS]
}