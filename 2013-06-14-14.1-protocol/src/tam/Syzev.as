package tam
{
   import pugem.Account;
   import com.company.util.Jyjoburib;


   public class Syzev extends Object implements Account
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Syzev() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const rihigenah:String = "steam";

      public var ciqocu:Sav;

      private var userId:String = "";

      private var password:String = null;

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
         return this.ciqocu.getPersonaName();
      }

      public function getUserId() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.userId=(this.userId)||"";
      }

      public function pysecik() : String {
         return "";
      }

      public function covisade() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.password=(this.password)||"";
      }

      public function pedavitu() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = {};
         _loc1_.guid=this.getUserId();
         _loc1_.secret=this.covisade();
         _loc1_.steamid=this.ciqocu.lakovoma();
         return _loc1_;
      }

      public function zuqic() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.covisade()=="");
      }

      public function mywuruv() : Boolean {
         return Jyjoburib.mag(this.userId);
      }

      public function tamy() : String {
         return this.ciqocu.lakovoma();
      }

      public function cug() : String {
         return rihigenah;
      }

      public function rarofu() : String {
         return "steam";
      }

      public function cipyrapyq(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.ciqocu.zahigequv(param1,param2);
         return;
      }

      public function vyj() : String {
         return "/steamworks";
      }

      public function dyw() : String {
         return "steamworks";
      }

      public function clear() : void {
         return;
      }

      public function verify(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nalohu=param1;
         return;
      }

      public function pedul() : String {
         throw new Error("No current support for new Kabam offer wall on Steam.");
      }

      public function bujadal() : String {
         throw new Error("No current support for new Kabam offer wall on Steam.");
      }
   }

}