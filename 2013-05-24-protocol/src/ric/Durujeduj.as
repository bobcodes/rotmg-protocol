package ric
{
   import ruwa.Account;
   import com.company.assembleegameclient.util.GUID;
   import flash.net.SharedObject;
   import aaa.rotmg.config.UserConfig;
   import flash.external.ExternalInterface;


   public class Durujeduj extends Object implements Account
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Durujeduj() {
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

      public static const tatuzo:String = "rotmg";

      private static const nobifac:String = "";

      private static const surajes:String = "rotmg";

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

      public function vef() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.password)||"";
      }

      public function venupog() : Object {
         return 
            {
               guid:this.getUserId(),
               password:this.vef()
            }
         ;
      }

      public function bugi() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.vef()=="");
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

      public function vajydor() : String {
         return tatuzo;
      }

      public function bicydyn() : String {
         return surajes;
      }

      public function qujipoj() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.homofu)||"";
      }

      public function ducerubug() : String {
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
         return this.signedRequest;
      }

      public function rozabuweq() : String {
         return this.disemugy;
      }
   }

}