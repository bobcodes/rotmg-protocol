package fup
{
   import komawowag.Bep;
   import komawowag.Net;
   import komawowag.Lagyqig;


   public class Cucu extends Object implements Bep
   {
      public function Cucu(param1:Net) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.kavev=param1;
         return;
      }

      private const tyjipegyf:Gopyb = new Gopyb();

      private var kavev:Net;

      public function log(param1:Object, param2:uint, param3:int, param4:String, param5:Array=null) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         trace(param3+" "+Lagyqig.NAME[param2]+" "+this.kavev+" "+param1+" - "+this.tyjipegyf.zopa(param4,param5));
         return;
      }
   }

}