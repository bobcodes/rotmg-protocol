package zib
{
[CLASS730]   import leselo.Account;
   import com.company.util.Vutem;


   public class Kake extends Object implements Account
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kake() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const kiza:String = "steam";

      public var lowemycu:Bebemed;

      private var userId:String = "";

      private var password:String = null;

      private var hipy:Boolean;

      private var lygogac:String;

      public function fuv(param1:String, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.userId=param1;
         this.password=param2;
         return;
      }

      public function paweral() : String {
         return this.lowemycu.getPersonaName();
      }

      public function getUserId() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.userId=(this.userId)||"";
      }

      public function nume() : String {
         return "";
      }

      public function bihowik() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.password=(this.password)||"";
      }

      public function dera() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = {};
         _loc1_.guid=this.getUserId();
         _loc1_.secret=this.bihowik();
         _loc1_.steamid=this.lowemycu.danyhuw();
         return _loc1_;
      }

      public function tuq() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.bihowik()=="");
      }

      public function nypyq() : Boolean {
         return Vutem.hil(this.userId);
      }

      public function fyp() : String {
         return this.lowemycu.danyhuw();
      }

      public function myqem() : String {
         return kiza;
      }

      public function rom() : String {
         return "steam";
      }

      public function rihesujuc(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.lowemycu.myruve(param1,param2);
         return;
      }

      public function pyfiqa() : String {
         return "/steamworks";
      }

      public function wiqen() : String {
         return "steamworks";
      }

      public function clear() : void {
         return;
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lygogac=param1;
         return;
      }

      public function mucana() : String {
         throw new Error("No current support for new Kabam offer wall on Steam.");
      }

      public function jypy() : String {
         throw new Error("No current support for new Kabam offer wall on Steam.");
      }
   }
[/CLASS]
}