package damul
{
   import tulunyno.Hugyqufyq;
   import com.company.assembleegameclient.util.Pygymy;


   public class Qyfa extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qyfa() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vehi=new Hugyqufyq();
         this.mitahi=new Hugyqufyq(int);
         this.gyzora=new Hugyqufyq(Date);
         this.kaweru=new Hugyqufyq(int);
         this.ryqo=new Hugyqufyq(String);
         this.myma=new Hugyqufyq(int);
         this.rugubik=new Hugyqufyq(int);
         this.zilurotum=new Hugyqufyq(int);
         this.lujyga=new Hugyqufyq(String);
         super();
         return;
      }

      public static const menoqecot:int = -1;

      private var qoso:Boolean = false;

      public var vehi:Hugyqufyq;

      public var mitahi:Hugyqufyq;

      public var gyzora:Hugyqufyq;

      public var kaweru:Hugyqufyq;

      public var ryqo:Hugyqufyq;

      public var myma:Hugyqufyq;

      public var rugubik:Hugyqufyq;

      public var zilurotum:Hugyqufyq;

      public var lujyga:Hugyqufyq;

      private var nur:int;

      private var jisoz:Date;

      private var _name:String;

      private var _quantity:int;

      private var zazuh:int;

      private var _price:int;

      private var hororolep:String;

      private var met:int;

      private var cere:int;

      public function jaribosod(param1:int, param2:Date, param3:String, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         this.nur=param1;
         this.jisoz=param2;
         this._name=param3;
         this._quantity=param4;
         this.zazuh=param5;
         this.met=param6;
         this._price=param7;
         this.hororolep=param8;
         this.cere=param9;
         this.qoso=true;
         this.vehi.dispatch();
         return;
      }

      public function komyby() : int {
         var _loc1_:Date = new Date();
         return this.jisoz.time-_loc1_.time;
      }

      public function honedu() : Number {
         return Math.ceil(Pygymy.buqe(this.komyby()/1000));
      }

      public function get quantity() : int {
         return this._quantity;
      }

      public function set quantity(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._quantity=param1;
         this.myma.dispatch(param1);
         return;
      }

      public function get priority() : int {
         return this.met;
      }

      public function set priority(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.met=param1;
         return;
      }

      public function get packageID() : int {
         return this.nur;
      }

      public function set packageID(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nur=param1;
         this.mitahi.dispatch(param1);
         return;
      }

      public function get pacewalo() : Date {
         return this.jisoz;
      }

      public function set pacewalo(param1:Date) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jisoz=param1;
         this.gyzora.dispatch(param1);
         this.kaweru.dispatch(this.komyby());
         return;
      }

      public function get name() : String {
         return this._name;
      }

      public function set name(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._name=param1;
         this.ryqo.dispatch(param1);
         return;
      }

      public function get max() : int {
         return this.zazuh;
      }

      public function set max(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zazuh=param1;
         this.rugubik.dispatch(param1);
         return;
      }

      public function get price() : int {
         return this._price;
      }

      public function set price(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._price=param1;
         this.zilurotum.dispatch(param1);
         return;
      }

      public function get cewywume() : String {
         return this.hororolep;
      }

      public function get numPurchased() : int {
         return this.cere;
      }

      public function set numPurchased(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cere=param1;
         return;
      }

      public function gyra() : Boolean {
         return this.cere>0;
      }

      public function pyvo() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.max==menoqecot)
         {
            return true;
         }
         return this.cere<this.zazuh;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "[Package name="+this._name+", packageId="+this.nur+"]";
      }
   }

}