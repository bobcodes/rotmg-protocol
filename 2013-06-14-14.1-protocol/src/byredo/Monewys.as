package byredo
{
   import pugem.Account;
   import taruco.Hosoqoqy;


   public class Monewys extends Object implements Account
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Monewys() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const rihigenah:String = "kongregate";

      public var ciqocu:Hosoqoqy;

      private var userId:String = "";

      private var password:String;

      private var qyzewohy:Boolean;

      private var nalohu:String;

      public function sapihaj(param1:String, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.userId=param1;
         this.password=param2;
         return;
      }

      public function dodet() : String {
         return this.ciqocu.dodet();
      }

      public function getUserId() : String {
         return this.userId;
      }

      public function pysecik() : String {
         return "";
      }

      public function covisade() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.password)||"";
      }

      public function pedavitu() : Object {
         return 
            {
               guid:this.getUserId(),
               secret:this.covisade()
            }
         ;
      }

      public function zuqic() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.covisade()=="");
      }

      public function tamy() : String {
         return this.ciqocu.getUserId();
      }

      public function cug() : String {
         return rihigenah;
      }

      public function rarofu() : String {
         return "kongregate";
      }

      public function cipyrapyq(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.ciqocu.zahigequv(param1,param2);
         return;
      }

      public function vyj() : String {
         return "/kongregate";
      }

      public function dyw() : String {
         return "kongregate";
      }

      public function clear() : void {
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.nalohu)||"";
      }

      public function piwobaqej(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nalohu=param1;
         return;
      }

      public function pedul() : String {
         throw new Error("No current support for new Kabam offer wall on Kongregate.");
      }

      public function bujadal() : String {
         throw new Error("No current support for new Kabam offer wall on Kongregate.");
      }
   }

}