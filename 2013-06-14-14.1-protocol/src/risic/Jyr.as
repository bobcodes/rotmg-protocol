package risic
{
   import pugem.Account;
   import com.company.assembleegameclient.util.GUID;
   import flash.net.SharedObject;
   import aaa.RotmgParameters.RotmgParameters;
   import flash.external.ExternalInterface;


   public class Jyr extends Object implements Account
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jyr() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         try
         {
            this.qiqiwo=ExternalInterface.call("rotmg.UrlLib.getParam","entrypt");
         }
         catch(error:Error)
         {
         }
         return;
      }

      public static const rihigenah:String = "rotmg";

      private static const qocyne:String = "";

      private static const sevu:String = "rotmg";

      private var userId:String = "";

      private var password:String;

      private var qiqiwo:String = "";

      private var qyzewohy:Boolean;

      private var nalohu:String;

      public var signedRequest:String;

      public var casesydiz:String;

      public function dodet() : String {
         return this.userId;
      }

      public function getUserId() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.userId=(this.userId)||(GUID.create());
      }

      public function pysecik() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.password)||"";
      }

      public function pedavitu() : Object {
         return 
            {
               guid:this.getUserId(),
               password:this.pysecik()
            }
         ;
      }

      public function zuqic() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.pysecik()=="");
      }

      public function sapihaj(param1:String, param2:String) : void {
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
         this.sapihaj(GUID.create(),null);
         RotmgParameters.jiqovezu=true;
         RotmgParameters.data_.charIdUseMap={};
         RotmgParameters.save();
         return;
      }

      public function cipyrapyq(param1:String, param2:int) : void {
         return;
      }

      public function vyj() : String {
         return "/credits";
      }

      public function tamy() : String {
         return qocyne;
      }

      public function cug() : String {
         return rihigenah;
      }

      public function rarofu() : String {
         return sevu;
      }

      public function dyw() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.qiqiwo)||"";
      }

      public function covisade() : String {
         return "";
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
         return this.signedRequest;
      }

      public function bujadal() : String {
         return this.casesydiz;
      }
   }

}