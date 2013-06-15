package com.google.analytics.ecommerce
{
   import com.google.analytics.utils.Variables;


   public class Transaction extends Object
   {
      public function Transaction(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String) {
         super();
         this._id=param1;
         this._affiliation=param2;
         this._total=param3;
         this._tax=param4;
         this._shipping=param5;
         this._city=param6;
         this._state=param7;
         this._country=param8;
         _items=new Array();
         return;
      }

      private var _items:Array;

      public function get total() : String {
         return _total;
      }

      private var _total:String;

      public function getItemFromArray(param1:Number) : Item {
         return _items[param1];
      }

      public function set total(param1:String) : void {
         _total=param1;
         return;
      }

      public function getItem(param1:String) : Item {
         var _loc2_:* = NaN;
         _loc2_=0;
         while(_loc2_<_items.length)
         {
            if(_items[_loc2_].sku==param1)
            {
               return _items[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }

      private var _vars:Variables;

      private var _shipping:String;

      public function getItemsLength() : Number {
         return _items.length;
      }

      private var _city:String;

      private var _state:String;

      public function addItem(param1:String, param2:String, param3:String, param4:String, param5:String) : void {
         var _loc6_:Item = null;
         _loc6_=getItem(param1);
         if(_loc6_==null)
         {
            _loc6_=new Item(_id,param1,param2,param3,param4,param5);
            _items.push(_loc6_);
         }
         else
         {
            _loc6_.name=param2;
            _loc6_.category=param3;
            _loc6_.price=param4;
            _loc6_.quantity=param5;
         }
         return;
      }

      private var _country:String;

      public function set shipping(param1:String) : void {
         _shipping=param1;
         return;
      }

      public function get country() : String {
         return _country;
      }

      public function get state() : String {
         return _state;
      }

      public function set tax(param1:String) : void {
         _tax=param1;
         return;
      }

      public function set affiliation(param1:String) : void {
         _affiliation=param1;
         return;
      }

      public function set state(param1:String) : void {
         _state=param1;
         return;
      }

      public function get id() : String {
         return _id;
      }

      public function get tax() : String {
         return _tax;
      }

      private var _tax:String;

      public function toGifParams() : Variables {
         var _loc1_:Variables = new Variables();
         _loc1_.URIencode=true;
         _loc1_.utmt="tran";
         _loc1_.utmtid=id;
         _loc1_.utmtst=affiliation;
         _loc1_.utmtto=total;
         _loc1_.utmttx=tax;
         _loc1_.utmtsp=shipping;
         _loc1_.utmtci=city;
         _loc1_.utmtrg=state;
         _loc1_.utmtco=country;
         _loc1_.post=["utmtid","utmtst","utmtto","utmttx","utmtsp","utmtci","utmtrg","utmtco"];
         return _loc1_;
      }

      public function get affiliation() : String {
         return _affiliation;
      }

      private var _affiliation:String;

      public function get city() : String {
         return _city;
      }

      public function get shipping() : String {
         return _shipping;
      }

      public function set id(param1:String) : void {
         _id=param1;
         return;
      }

      public function set city(param1:String) : void {
         _city=param1;
         return;
      }

      private var _id:String;

      public function set country(param1:String) : void {
         _country=param1;
         return;
      }
   }

}