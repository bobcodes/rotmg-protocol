package bumyj
{
[CLASS754]   import leselo.Account;
   import tizozowof.Fedyl;


   public class Hacuvozep extends Object implements Account
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hacuvozep() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const kiza:String = "kongregate";

      public var lowemycu:Fedyl;

      private var userId:String = "";

      private var password:String;

      private var hipy:Boolean;

      private var lygogac:String;

      public function fuv(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.userId=param1;
         this.password=param2;
         return;
      }

      public function paweral() : String {
         return this.lowemycu.paweral();
      }

      public function getUserId() : String {
         return this.userId;
      }

      public function nume() : String {
         return "";
      }

      public function bihowik() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.password)||"";
      }

      public function dera() : Object {
         return 
            {
               guid:this.getUserId(),
               secret:this.bihowik()
            }
         ;
      }

      public function tuq() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.bihowik()=="");
      }

      public function fyp() : String {
         return this.lowemycu.getUserId();
      }

      public function myqem() : String {
         return kiza;
      }

      public function rom() : String {
         return "kongregate";
      }

      public function rihesujuc(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.lowemycu.myruve(param1,param2);
         return;
      }

      public function pyfiqa() : String {
         return "/kongregate";
      }

      public function wiqen() : String {
         return "kongregate";
      }

      public function clear() : void {
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lygogac=param1;
         return;
      }

      public function mucana() : String {
         throw new Error("No current support for new Kabam offer wall on Kongregate.");
      }

      public function jypy() : String {
         throw new Error("No current support for new Kabam offer wall on Kongregate.");
      }
   }
[/CLASS]
}