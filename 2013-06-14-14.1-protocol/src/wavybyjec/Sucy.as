package wavybyjec
{
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.util.Wigi;


   public class Sucy extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Sucy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zolevotid=new Qanyduk();
         this.pilazuhok=new Qanyduk(int);
         this.paqaly=new Qanyduk(Date);
         this.jirutuvab=new Qanyduk(int);
         this.foryc=new Qanyduk(String);
         this.zazyc=new Qanyduk(int);
         this.jemulyd=new Qanyduk(int);
         this.napaf=new Qanyduk(int);
         this.wudo=new Qanyduk(String);
         super();
         return;
      }

      public static const jybycadaf:int = -1;

      private var bugagyt:Boolean = false;

      public var zolevotid:Qanyduk;

      public var pilazuhok:Qanyduk;

      public var paqaly:Qanyduk;

      public var jirutuvab:Qanyduk;

      public var foryc:Qanyduk;

      public var zazyc:Qanyduk;

      public var jemulyd:Qanyduk;

      public var napaf:Qanyduk;

      public var wudo:Qanyduk;

      private var tyje:int;

      private var pynikyby:Date;

      private var _name:String;

      private var _quantity:int;

      private var jewosaly:int;

      private var _price:int;

      private var fijeqemat:String;

      private var ceqy:int;

      private var giroj:int;

      public function raqy(param1:int, param2:Date, param3:String, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         this.tyje=param1;
         this.pynikyby=param2;
         this._name=param3;
         this._quantity=param4;
         this.jewosaly=param5;
         this.ceqy=param6;
         this._price=param7;
         this.fijeqemat=param8;
         this.giroj=param9;
         this.bugagyt=true;
         this.zolevotid.dispatch();
         return;
      }

      public function horekafoqa() : int {
         var _loc1_:Date = new Date();
         return this.pynikyby.time-_loc1_.time;
      }

      public function rer() : Number {
         return Math.ceil(Wigi.noqinid(this.horekafoqa()/1000));
      }

      public function get quantity() : int {
         return this._quantity;
      }

      public function set quantity(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._quantity=param1;
         this.zazyc.dispatch(param1);
         return;
      }

      public function get priority() : int {
         return this.ceqy;
      }

      public function set priority(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ceqy=param1;
         return;
      }

      public function get packageID() : int {
         return this.tyje;
      }

      public function set packageID(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tyje=param1;
         this.pilazuhok.dispatch(param1);
         return;
      }

      public function get meliwygy() : Date {
         return this.pynikyby;
      }

      public function set meliwygy(param1:Date) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pynikyby=param1;
         this.paqaly.dispatch(param1);
         this.jirutuvab.dispatch(this.horekafoqa());
         return;
      }

      public function get name() : String {
         return this._name;
      }

      public function set name(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._name=param1;
         this.foryc.dispatch(param1);
         return;
      }

      public function get max() : int {
         return this.jewosaly;
      }

      public function set max(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jewosaly=param1;
         this.jemulyd.dispatch(param1);
         return;
      }

      public function get price() : int {
         return this._price;
      }

      public function set price(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._price=param1;
         this.napaf.dispatch(param1);
         return;
      }

      public function get wipud() : String {
         return this.fijeqemat;
      }

      public function get numPurchased() : int {
         return this.giroj;
      }

      public function set numPurchased(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.giroj=param1;
         return;
      }

      public function hazinyka() : Boolean {
         return this.giroj>0;
      }

      public function runytimi() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.max==jybycadaf)
         {
            return true;
         }
         return this.giroj<this.jewosaly;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "[Package name="+this._name+", packageId="+this.tyje+"]";
      }
   }

}