package dijojygeg
{
   import ruwa.Account;
   import nukobi.Fozydo;


   public class Pan extends Object implements Account
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Pan() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const tatuzo:String = "kongregate";

      public var zefy:Fozydo;

      private var userId:String = "";

      private var password:String;

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
         return this.zefy.nenyzeqe();
      }

      public function getUserId() : String {
         return this.userId;
      }

      public function vef() : String {
         return "";
      }

      public function ducerubug() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.password)||"";
      }

      public function venupog() : Object {
         return 
            {
               guid:this.getUserId(),
               secret:this.ducerubug()
            }
         ;
      }

      public function bugi() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.ducerubug()=="");
      }

      public function zyz() : String {
         return this.zefy.getUserId();
      }

      public function vajydor() : String {
         return tatuzo;
      }

      public function bicydyn() : String {
         return "kongregate";
      }

      public function lusysises(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.zefy.bipegy(param1,param2);
         return;
      }

      public function nuce() : String {
         return "/kongregate";
      }

      public function qujipoj() : String {
         return "kongregate";
      }

      public function clear() : void {
         return;
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kofimupo=param1;
         return;
      }

      public function lyze() : String {
         throw new Error("No current support for new Kabam offer wall on Kongregate.");
      }

      public function rozabuweq() : String {
         throw new Error("No current support for new Kabam offer wall on Kongregate.");
      }
   }

}