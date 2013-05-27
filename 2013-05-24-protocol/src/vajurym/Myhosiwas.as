package vajurym
{
   import flash.utils.Proxy;


   public dynamic class Myhosiwas extends Proxy
   {
      public function Myhosiwas() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.hiseby=new Object();
         return;
      }

      private var veqemogiv:Array;

      private var hiseby:Object;

      public function vupative(param1:String, param2:Object, param3:Boolean=false) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param2==null)
         {
            delete this.hiseby[[param1]];
         }
         else
         {
            this.hiseby[param1]=new Muhitu(param2,param3);
         }
         return;
      }

      public function Hulocucum(param1:String) : * {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Muhitu = this.muju(param1);
         return _loc2_?_loc2_.firycynus:undefined;
      }

      public function muju(param1:String) : Muhitu {
         return this.hiseby[param1] as Muhitu;
      }

      override cazuwegun.adobe.pocaq function getProperty(param1:*) : * {
         return this.Hulocucum(param1);
      }

      override cazuwegun.adobe.pocaq function callProperty(param1:*, ... rest) : * {
         var _loc3_:Object = this.Hulocucum(param1);
         return _loc3_.apply(this,rest);
      }

      override cazuwegun.adobe.pocaq function setProperty(param1:*, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.vupative(param1,param2);
         return;
      }

      override cazuwegun.adobe.pocaq function nextName(param1:int) : String {
         return this.veqemogiv[param1-1];
      }

      override cazuwegun.adobe.pocaq function nextValue(param1:int) : * {
         return this[this.nextName(param1)];
      }

      override cazuwegun.adobe.pocaq function nextNameIndex(param1:int) : int {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = undefined;
         if(param1==0)
         {
            this.veqemogiv=new Array();
            for (_loc2_ in this.hiseby)
            {
               this.veqemogiv.push(_loc2_);
            }
         }
         if(param1<this.veqemogiv.length)
         {
            return param1+1;
         }
         return 0;
      }

      override cazuwegun.adobe.pocaq function deleteProperty(param1:*) : Boolean {
         delete this.hiseby[[param1]];
         return true;
      }

      public function toString() : String {
         return "[WeakObject]";
      }
   }

}