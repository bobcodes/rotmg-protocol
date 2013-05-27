package tavo
{
   import nago.Visyw;


   public class Leno extends Object implements Wahah
   {
      public function Leno() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.lypy={};
         return;
      }

      public var lihyqi:Visyw;

      private var lypy:Object;

      public function wym(param1:String, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Zaly = this.lypy[param1]=(this.lypy[param1])||(new Zaly(param1));
         _loc3_.kawa(param2);
         this.lihyqi.dispatch(_loc3_);
         return;
      }
   }

}