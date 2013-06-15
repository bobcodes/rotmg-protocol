package rikewu
{
   import flash.utils.Proxy;


   public dynamic class Jatu extends Proxy
   {
      public function Jatu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.dyvosico=new Object();
         return;
      }

      private var fewibo:Array;

      private var dyvosico:Object;

      public function Lunahymo(param1:String, param2:Object, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param2==null)
         {
            GlobalNotificationActionte this.dyvosico[[param1]];
         }
         else
         {
            this.dyvosico[param1]=new Zacola(param2,param3);
         }
         return;
      }

      public function vivuqes(param1:String) : * {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Zacola = this.telibivyw(param1);
         return _loc2_?_loc2_.hed:undefined;
      }

      public function telibivyw(param1:String) : Zacola {
         return this.dyvosico[param1] as Zacola;
      }

      override luhefuvi.adobe.qih function getProperty(param1:*) : * {
         return this.vivuqes(param1);
      }

      override luhefuvi.adobe.qih function callProperty(param1:*, ... rest) : * {
         var _loc3_:Object = this.vivuqes(param1);
         return _loc3_.apply(this,rest);
      }

      override luhefuvi.adobe.qih function setProperty(param1:*, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.Lunahymo(param1,param2);
         return;
      }

      override luhefuvi.adobe.qih function nextName(param1:int) : String {
         return this.fewibo[param1-1];
      }

      override luhefuvi.adobe.qih function nextValue(param1:int) : * {
         return this[this.nextName(param1)];
      }

      override luhefuvi.adobe.qih function nextNameIndex(param1:int) : int {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = undefined;
         if(param1==0)
         {
            this.fewibo=new Array();
            for (_loc2_ in this.dyvosico)
            {
               this.fewibo.push(_loc2_);
            }
         }
         if(param1<this.fewibo.length)
         {
            return param1+1;
         }
         return 0;
      }

      override luhefuvi.adobe.qih function GlobalNotificationActionteProperty(param1:*) : Boolean {
         GlobalNotificationActionte this.dyvosico[[param1]];
         return true;
      }

      public function toString() : String {
         return "[WeakObject]";
      }
   }

}