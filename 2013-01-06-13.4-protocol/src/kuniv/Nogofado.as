package kuniv
{
[CLASS896]   import tinava.Dab;
   import com.company.assembleegameclient.util.Guleboqi;


   public class Nogofado extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Nogofado() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zyte=new Dab();
         this.getowy=new Dab(int);
         this.mery=new Dab(Date);
         this.picakocak=new Dab(int);
         this.mecanalos=new Dab(String);
         this.siciwoqu=new Dab(int);
         this.camyqova=new Dab(int);
         this.cyw=new Dab(int);
         this.puhahege=new Dab(String);
         super();
         return;
      }

      public static const revizoti:int = -1;

      private var lyp:Boolean = false;

      public var zyte:Dab;

      public var getowy:Dab;

      public var mery:Dab;

      public var picakocak:Dab;

      public var mecanalos:Dab;

      public var siciwoqu:Dab;

      public var camyqova:Dab;

      public var cyw:Dab;

      public var puhahege:Dab;

      private var kamatufig:int;

      private var pap:Date;

      private var _name:String;

      private var _quantity:int;

      private var pimikum:int;

      private var _price:int;

      private var sugabaz:String;

      private var bakakuhoc:int;

      private var wutyna:int;

      public function polaget(param1:int, param2:Date, param3:String, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         this.kamatufig=param1;
         this.pap=param2;
         this._name=param3;
         this._quantity=param4;
         this.pimikum=param5;
         this.bakakuhoc=param6;
         this._price=param7;
         this.sugabaz=param8;
         this.wutyna=param9;
         this.lyp=true;
         this.zyte.dispatch();
         return;
      }

      public function bavavij() : int {
         var _loc1_:Date = new Date();
         return this.pap.time-_loc1_.time;
      }

      public function jaluky() : Number {
         return Math.ceil(Guleboqi.puw(this.bavavij()/1000));
      }

      public function get quantity() : int {
         return this._quantity;
      }

      public function set quantity(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._quantity=param1;
         this.siciwoqu.dispatch(param1);
         return;
      }

      public function get priority() : int {
         return this.bakakuhoc;
      }

      public function set priority(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bakakuhoc=param1;
         return;
      }

      public function get packageID() : int {
         return this.kamatufig;
      }

      public function set packageID(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kamatufig=param1;
         this.getowy.dispatch(param1);
         return;
      }

      public function get cubegiryf() : Date {
         return this.pap;
      }

      public function set cubegiryf(param1:Date) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pap=param1;
         this.mery.dispatch(param1);
         this.picakocak.dispatch(this.bavavij());
         return;
      }

      public function get name() : String {
         return this._name;
      }

      public function set name(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._name=param1;
         this.mecanalos.dispatch(param1);
         return;
      }

      public function get max() : int {
         return this.pimikum;
      }

      public function set max(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pimikum=param1;
         this.camyqova.dispatch(param1);
         return;
      }

      public function get price() : int {
         return this._price;
      }

      public function set price(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._price=param1;
         this.cyw.dispatch(param1);
         return;
      }

      public function get maruwab() : String {
         return this.sugabaz;
      }

      public function get numPurchased() : int {
         return this.wutyna;
      }

      public function set numPurchased(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wutyna=param1;
         return;
      }

      public function lykof() : Boolean {
         return this.wutyna>0;
      }

      public function fuky() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.max==revizoti)
         {
            return true;
         }
         return this.wutyna<this.pimikum;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "[Package name="+this._name+", packageId="+this.kamatufig+"]";
      }
   }
[/CLASS]
}