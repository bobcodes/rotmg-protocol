package cakajitez
{
[CLASS1896]   import flash.utils.Proxy;


   public dynamic class Laqajuvo extends Proxy
   {
      public function Laqajuvo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.hedypoqa=new Object();
         return;
      }

      private var dajog:Array;

      private var hedypoqa:Object;

      public function kulebocy(param1:String, param2:Object, param3:Boolean=false) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param2==null)
         {
            delete this.hedypoqa[[param1]];
         }
         else
         {
            this.hedypoqa[param1]=new Lycerimef(param2,param3);
         }
         return;
      }

      public function Vinac(param1:String) : * {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Lycerimef = this.cejuwovi(param1);
         return _loc2_?_loc2_.huke:undefined;
      }

      public function cejuwovi(param1:String) : Lycerimef {
         return this.hedypoqa[param1] as Lycerimef;
      }

      override lyqezace.adobe.wydijezot function getProperty(param1:*) : * {
         return this.Vinac(param1);
      }

      override lyqezace.adobe.wydijezot function callProperty(param1:*, ... rest) : * {
         var _loc3_:Object = this.Vinac(param1);
         return _loc3_.apply(this,rest);
      }

      override lyqezace.adobe.wydijezot function setProperty(param1:*, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.kulebocy(param1,param2);
         return;
      }

      override lyqezace.adobe.wydijezot function nextName(param1:int) : String {
         return this.dajog[param1-1];
      }

      override lyqezace.adobe.wydijezot function nextValue(param1:int) : * {
         return this[this.nextName(param1)];
      }

      override lyqezace.adobe.wydijezot function nextNameIndex(param1:int) : int {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = undefined;
         if(param1==0)
         {
            this.dajog=new Array();
            for (_loc2_ in this.hedypoqa)
            {
               this.dajog.push(_loc2_);
            }
         }
         if(param1<this.dajog.length)
         {
            return param1+1;
         }
         return 0;
      }

      override lyqezace.adobe.wydijezot function deleteProperty(param1:*) : Boolean {
         delete this.hedypoqa[[param1]];
         return true;
      }

      public function toString() : String {
         return "[WeakObject]";
      }
   }
[/CLASS]
}