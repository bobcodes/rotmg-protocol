package aaa.rotmg.account
{
   import aaa.rotmg.account.Account;
   import com.company.util.Zutywapo;
   import cyt.Zivovype;


   public class StreamAccount extends Object implements Account
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Car() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const ACCOUNT_TYPE:String = "steam";

      public var zefy:Zivovype;

      private var userId:String = "";

      private var password:String = null;

      private var lohigelama:Boolean;

      private var kofimupo:String;

      public function tesaw(param1:String, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.userId=param1;
         this.password=param2;
         return;
      }

      public function nenyzeqe() : String {
         return this.zefy.getPersonaName();
      }

      public function getUserId() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.userId=(this.userId)||"";
      }

      public function vef() : String {
         return "";
      }

      public function ducerubug() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.password=(this.password)||"";
      }

      public function venupog() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = {};
         _loc1_.guid=this.getUserId();
         _loc1_.secret=this.ducerubug();
         _loc1_.steamid=this.zefy.berygo();
         return _loc1_;
      }

      public function bugi() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.ducerubug()=="");
      }

      public function toqonary() : Boolean {
         return Zutywapo.cuwuhuz(this.userId);
      }

      public function zyz() : String {
         return this.zefy.berygo();
      }

      public function getAccountType() : String {
         return ACCOUNT_TYPE;
      }

      public function bicydyn() : String {
         return "steam";
      }

      public function lusysises(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.zefy.bipegy(param1,param2);
         return;
      }

      public function nuce() : String {
         return "/steamworks";
      }

      public function qujipoj() : String {
         return "steamworks";
      }

      public function clear() : void {
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.kofimupo)||"";
      }

      public function rovehuhuv(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kofimupo=param1;
         return;
      }

      public function lyze() : String {
         throw new Error("No current support for new Kabam offer wall on Steam.");
      }

      public function rozabuweq() : String {
         throw new Error("No current support for new Kabam offer wall on Steam.");
      }
   }

}